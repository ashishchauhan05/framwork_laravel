<?php

return [

	/*
	|--------------------------------------------------------------------------
	| Third Party Services
	|--------------------------------------------------------------------------
	|
	| This file is for storing the credentials for third party services such
	| as Stripe, Mailgun, Mandrill, and others. This file provides a sane
	| default location for this type of information, allowing packages
	| to have a conventional place to find your various credentials.
	|
	*/

	'mailgun' => [
		'domain' => '',
		'secret' => '',
	],

	'mandrill' => [
		'secret' => '',
	],

	'ses' => [
        //'credentials' => [
            'key' => 'AKIAIKAF7TAPZLZ7B54Q',
            'secret' => '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',
        //],
        'region' => 'us-east-1',        
        'version' => 'latest'
	],

	'stripe' => [
		'model'  => 'User',
		'secret' => '',
	],

];
