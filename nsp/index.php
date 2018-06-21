<?php
require_once './vendor/autoload.php'; 

$url = isset($_GET['url']) == true ? $_GET['url'] : "/"; 

use App\Controllers\HomeController;
use App\Controllers\AdminController;
switch ($url) {
	case '/':
		$ctr = new HomeController();
		$ctr->index();
		break;
	case 'admin':
		$ctr = new AdminController();
		$ctr->dashboard();
		break;
	case 'login':
		if ($_SERVER['REQUEST_METHOD'] == 'GET') {
			
			$ctr = new HomeController();
			$ctr->login();
		}else{

			$ctr = new HomeController();
			$ctr->postLogin();
		}
		break;
	
	default:
		# code...
		break;
}

 ?>
 