<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\SoftDeletes;
// use Laravel\Fortify\TwoFactorAuthenticatable;
// use Laravel\Jetstream\HasProfilePhoto;
use Laravel\Sanctum\HasApiTokens;
use App\Models\Role;
use Auth;


class User extends Authenticatable
{
    use HasApiTokens;
    use HasFactory;
    // use HasProfilePhoto;
    use Notifiable;
    // use TwoFactorAuthenticatable;
    use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    
    protected $fillable = [
        'first_name',
        'last_name',
        'public_id',
        'role_id',
        'email',
        'password',
        'referred_by',
        'referral',
        'two_factor_secret'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
        'two_factor_recovery_codes',
        'two_factor_secret',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * The accessors to append to the model's array form.
     *
     * @var array
     */
    // protected $appends = [
    //     'profile_photo_url',
    // ];

    public function getRole(){
        return strtolower(Role::where("id" , Auth::User()->role_id)->first()->name);
    }

    public function wallets() {
        return $this->belongsTo(Wallet::class, 'id', 'user_id');
    }

    public static function get_record_public($public_id){
        return User::where("id", $public_id)->first();
    }

    public function referrals()
    {
        return $this->hasMany(User::class, 'referred_by', 'id');
    }

    public function referrer()
    {
        return $this->belongsTo(User::class, 'referred_by', 'id');
    }
}
