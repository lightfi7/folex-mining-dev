<?php

return [
'accepted' => 'Le :attribute doit être accepté.',
'active_url' => 'Le :attribute n\'est pas une URL valide.',
'after' => 'Le :attribute doit être une date après :date.',
'after_or_equal' => 'Le :attribute doit être une date après ou égale à :date.',
'alpha' => 'Le :attribute ne peut contenir que des lettres.',
'alpha_dash' => 'Le :attribute ne peut contenir que des lettres, des chiffres, des tirets et des underscores.',
'alpha_num' => 'Le :attribute ne peut contenir que des lettres et des chiffres.',
'array' => 'Le :attribute doit être un tableau.',
'before' => 'Le :attribute doit être une date avant :date.',
'before_or_equal' => 'Le :attribute doit être une date avant ou égale à :date.',
'between' => [
    'numeric' => 'Le :attribute doit être entre :min et :max.',
    'file' => 'Le :attribute doit être entre :min et :max kilobytes.',
    'string' => 'Le :attribute doit être entre :min et :max caractères.',
    'array' => 'Le :attribute doit avoir entre :min et :max éléments.',
],
'boolean' => 'Le champ :attribute doit être vrai ou faux.',
'confirmed' => 'La confirmation de :attribute ne correspond pas.',
'date' => 'Le :attribute n\'est pas une date valide.',
'date_equals' => 'Le :attribute doit être une date égale à :date.',
'date_format' => 'Le :attribute ne correspond pas au format :format.',
'different' => 'Le :attribute et :other doivent être différents.',
'digits' => 'Le :attribute doit être de :digits chiffres.',
'digits_between' => 'Le :attribute doit être entre :min et :max chiffres.',
'dimensions' => 'Le :attribute a des dimensions d\'image invalides.',
'distinct' => 'Le champ :attribute a une valeur dupliquée.',
'email' => 'Le :attribute doit être une adresse e-mail valide.',
'ends_with' => 'Le :attribute doit se terminer par l\'un des éléments suivants : :values.',
'exists' => 'Le :attribute sélectionné est invalide.',
'file' => 'Le :attribute doit être un fichier.',
'filled' => 'Le champ :attribute doit avoir une valeur.',
'gt' => [
    'numeric' => 'Le :attribute doit être supérieur à :value.',
    'file' => 'Le :attribute doit être supérieur à :value kilobytes.',
    'string' => 'Le :attribute doit être supérieur à :value caractères.',
    'array' => 'Le :attribute doit avoir plus de :value éléments.',
],
'gte' => [
    'numeric' => 'Le :attribute doit être supérieur ou égal à :value.',
    'file' => 'Le :attribute doit être supérieur ou égal à :value kilobytes.',
    'string' => 'Le :attribute doit être supérieur ou égal à :value caractères.',
    'array' => 'Le :attribute doit avoir :value éléments ou plus.',
],
'image' => 'Le :attribute doit être une image.',
'in' => 'Le :attribute sélectionné est invalide.',
'in_array' => 'Le champ :attribute n\'existe pas dans :other.',
'integer' => 'Le :attribute doit être un entier.',
'ip' => 'Le :attribute doit être une adresse IP valide.',
'ipv4' => 'Le :attribute doit être une adresse IPv4 valide.',
'ipv6' => 'Le :attribute doit être une adresse IPv6 valide.',
'json' => 'Le :attribute doit être une chaîne JSON valide.',
'lt' => [
    'numeric' => 'Le :attribute doit être inférieur à :value.',
    'file' => 'Le :attribute doit être inférieur à :value kilobytes.',
    'string' => 'Le :attribute doit être inférieur à :value caractères.',
    'array' => 'Le :attribute doit avoir moins de :value éléments.',
],
'lte' => [
    'numeric' => 'Le :attribute doit être inférieur ou égal à :value.',
    'file' => 'Le :attribute doit être inférieur ou égal à :value kilobytes.',
    'string' => 'Le :attribute doit être inférieur ou égal à :value caractères.',
    'array' => 'Le :attribute ne doit pas avoir plus de :value éléments.',
],
'max' => [
    'numeric' => 'Le :attribute ne peut pas être supérieur à :max.',
    'file' => 'Le :attribute ne peut pas être supérieur à :max kilobytes.',
    'string' => 'Le :attribute ne peut pas être supérieur à :max caractères.',
    'array' => 'Le :attribute ne peut pas avoir plus de :max éléments.',
],
'mimes' => 'Le :attribute doit être un fichier de type : :values.',
'mimetypes' => 'Le :attribute doit être un fichier de type : :values.',
'min' => [
    'numeric' => 'Le :attribute doit être au moins :min.',
    'file' => 'Le :attribute doit être d\'au moins :min kilobytes.',
    'string' => 'Le :attribute doit avoir au moins :min caractères.',
    'array' => 'Le :attribute doit avoir au moins :min éléments.',
],
'multiple_of' => 'Le :attribute doit être un multiple de :value.',
'not_in' => 'Le :attribute sélectionné est invalide.',
'not_regex' => 'Le format de :attribute est invalide.',
'numeric' => 'Le :attribute doit être un nombre.',
'password' => 'Le mot de passe est incorrect.',
'present' => 'Le champ :attribute doit être présent.',
'regex' => 'Le format de :attribute est invalide.',
'required' => 'Le champ :attribute est requis.',
'required_if' => 'Le champ :attribute est requis lorsque :other est :value.',
'required_unless' => 'Le champ :attribute est requis sauf si :other est dans :values.',
'required_with' => 'Le champ :attribute est requis lorsque :values est présent.',
'required_with_all' => 'Le champ :attribute est requis lorsque :values sont présents.',
'required_without' => 'Le champ :attribute est requis lorsque :values n\'est pas présent.',
'required_without_all' => 'Le champ :attribute est requis lorsque aucun de :values n\'est présent.',
'same' => 'Le :attribute et :other doivent correspondre.',
'size' => [
    'numeric' => 'Le :attribute doit être :size.',
    'file' => 'Le :attribute doit être :size kilobytes.',
    'string' => 'Le :attribute doit être :size caractères.',
    'array' => 'Le :attribute doit contenir :size éléments.',
],
'starts_with' => 'Le :attribute doit commencer par l\'un des éléments suivants : :values.',
'string' => 'Le :attribute doit être une chaîne.',
'timezone' => 'Le :attribute doit être une zone valide.',
'unique' => 'Le :attribute a déjà été pris.',
'uploaded' => 'Le :attribute a échoué à télécharger.',
'url' => 'Le format de :attribute est invalide.',
'uuid' => 'Le :attribute doit être un UUID valide.',
'numericarray' => 'Tous les :attribute doivent être des valeurs numériques.',
'numeric_id' => 'Tous les :attribute sont requis.',
'numeric_comma' => 'Le :attribute doit être un nombre.',
'serial' => 'Le :attribute doit comporter 12 caractères au format : XXX-XXX-XXXX.',

/*
|--------------------------------------------------------------------------
| Custom Validation Language Lines
|--------------------------------------------------------------------------
|
| Here you may specify custom validation messages for attributes using the
| convention "attribute.rule" to name the lines. This makes it quick to
| specify a specific custom language line for a given attribute rule.
|
*/

'custom' => [
    'attribute-name' => [
        'rule-name' => 'custom-message',
    ],
],

/*
|--------------------------------------------------------------------------
| Custom Validation Attributes
|--------------------------------------------------------------------------
|
| The following language lines are used to swap our attribute placeholder
| with something more reader friendly such as "E-Mail Address" instead
| of "email". This simply helps us make our message more expressive.
|
*/

'attributes' => [],

];
