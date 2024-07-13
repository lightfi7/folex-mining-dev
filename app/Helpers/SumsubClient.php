<?php
declare(strict_types=1);

namespace App\Helpers;

use GuzzleHttp;
use Psr\Http\Message\RequestInterface;
use Psr\Http\Message\ResponseInterface;
use RuntimeException;
use GuzzleHttp\Exception\ClientException;

class SumsubClient
{
    protected const BASE_URL = 'https://api.sumsub.com';

    protected GuzzleHttp\Client $guzzleClient;
    protected $appToken;
    protected $secretKey;

    public function __construct(
        string $appToken,
        string $secretKey
    ) {
        $this->appToken = $appToken;
        $this->secretKey = $secretKey;
        $this->guzzleClient = new GuzzleHttp\Client(['base_uri' => self::BASE_URL]);
    }

    /**
     * https://developers.sumsub.com/api-reference/#getting-applicant-status-api
     *
     * @param string $applicantId
     * @throws RuntimeException
     * @return array
     */

    public function getUserStatus(string $externalUserId)
    {
        try {
            $url = '/resources/applicants/-;externalUserId=' . urlencode($externalUserId) . '/one';
            $request = new GuzzleHttp\Psr7\Request('GET', $url);

            $response = $this->sendRequest($request);
            return $this->parseBody($response);
        } catch (ClientException $e) {
            info($e);
        } catch (RuntimeException $e) {
            info($e);
        }
    }

    /**
     * https://developers.sumsub.com/api-reference/#access-tokens-for-sdks
     *
     * @param string $externalUserId
     * @param string $levelName
     * @throws RuntimeException
     * @return array
     */

    public function getAccessToken(string $externalUserId, string $levelName): array
    {
        $url = '/resources/accessTokens?' . http_build_query(['userId' => $externalUserId, 'levelName' => $levelName]);
        $request = new GuzzleHttp\Psr7\Request('POST', $url);

        $response = $this->sendRequest($request);
        return $this->parseBody($response);
    }

    /**
     * @param RequestInterface $request
     * @throws RuntimeException
     * @return ResponseInterface
     */
    protected function sendRequest(RequestInterface $request): ResponseInterface
    {
        $now = time();
        $request = $request->withHeader('X-App-Token', $this->appToken)
            ->withHeader('X-App-Access-Sig', $this->createSignature($request, $now))
            ->withHeader('X-App-Access-Ts', $now);

        try {
            $response = $this->guzzleClient->send($request);
            if ($response->getStatusCode() != 200 && $response->getStatusCode() != 201) {
                // https://developers.sumsub.com/api-reference/#errors
                // If an unsuccessful answer is received, please log the value of the `correlationId` parameter.

                throw new RuntimeException('Invalid status code received: ' . $response->getStatusCode() . '. Body: ' . $response->getBody());
            }

            return $response;
        } catch (GuzzleHttp\Exception\GuzzleException $e) {
            print_r($e);
            throw new RuntimeException('Error occurred during the request', 0, $e);
            // return response('', 200);
        }
    }

    protected function createSignature(RequestInterface $request, int $ts): string
    {
        return hash_hmac('sha256', $ts . strtoupper($request->getMethod()) . $request->getUri() . $request->getBody(), $this->secretKey);
    }

    protected function parseBody(ResponseInterface $response): array
    {
        $data = (string) $response->getBody();
        $json = json_decode($data, true, JSON_THROW_ON_ERROR);
        if (!is_array($json)) {
            throw new RuntimeException('Invalid response received: ' . $data);
        }

        return $json;
    }
}