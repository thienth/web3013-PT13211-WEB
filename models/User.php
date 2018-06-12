<?php 
require_once './models/BaseModel.php';
/**
 * 
 */
class User extends BaseModel
{
	
	public $tableName = 'users';

	// public function update($name, $email, $password){
	// 	$sql = "update users 
	// 			set 	name = :name,
	// 					email = :email,
	// 					password = :password
	// 			where id = :id";
	// 	$stmt = $this->conn->prepare($sql);
	// 	$stmt->bindParam(':name', $name);
	// 	$stmt->bindParam(':email', $email);
	// 	$stmt->bindParam(':password', $password);
	// 	$stmt->bindParam(':id', $this->id);

	// 	$stmt->execute();
		
	// }
}

 ?>