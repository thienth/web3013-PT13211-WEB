<?php 
class AuthController
{
	
	public function headerAuth(){
		if(!isset($_SESSION['auth']) || count($_SESSION['auth']) == 0){
			include 'views/auth/login_link.php';
		}else{
			include 'views/auth/header_user.php';
		}
	}
}
 ?>