<?php 
session_start();
// require_once './controllers/AuthController.php';
// $ctr = new AuthController();
// $ctr->loginForm();
require_once './models/User.php';
$user = User::where(['id', '=', 2])->first();
$_SESSION['auth'] = [
	'id' => $user->id,
	'email' => $user->email,
	'avatar' => $user->avatar
];

header('location: index.php');
 ?>