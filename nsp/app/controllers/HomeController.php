<?php 
namespace App\Controllers;
/**
 * 
 */

use App\Controllers\BaseController;
use App\Models\UserModel;
class HomeController extends BaseController
{
	
	function index()
	{
		$user = new UserModel();
		echo $user->getTableName();
	}
	
	function login()
	{
		return $this->view('app/views/login.php');
	}
	
	function postLogin()
	{
		$email = $_POST['email'];
		$password = $_POST['password'];
		var_dump($email, $password);
	}
}


 ?>