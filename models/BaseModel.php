<?php 
/**
 * 
 */
class BaseModel
{
	
	function __construct()
	{
		$this->conn = new PDO('mysql:host=127.0.0.1;dbname=oop;charset=utf8', 'root', '123456');
	}

	public static function rawQuery($sqlQuery){
		$model = new static();
		$model->queryBuilder = $sqlQuery;
		return $model;
	}

	public static function all(){
		$model = new static();
		$query = "select * from $model->tableName";
		$stmt = $model->conn->prepare($query);
		$stmt->execute();

		return $stmt->fetchAll(PDO::FETCH_CLASS, get_class($model));
 	}

 	public static function where($arr){
 		$model = new static();
 		$model->queryBuilder = "select * from $model->tableName where $arr[0] $arr[1] '$arr[2]'";
 		return $model;
 	}

 	public function andWhere($arr){
 		$this->queryBuilder .= " and $arr[0] $arr[1] '$arr[2]'";
 		return $this;
 	}

 	public function orWhere($arr){
 		$this->queryBuilder .= " or $arr[0] $arr[1] '$arr[2]'";
 		return $this;
 	}

 	public function first(){
 		$stmt = $this->conn->prepare($this->queryBuilder);
		$stmt->execute();
		$result = $stmt->fetchAll(PDO::FETCH_CLASS, get_class($this));
		if(count($result) > 0){
			return $result[0];
		}else{
			return null;
		}
 	}

 	public function get(){
 		$stmt = $this->conn->prepare($this->queryBuilder);
		$stmt->execute();
		$result = $stmt->fetchAll(PDO::FETCH_CLASS, get_class($this));
		
		return $result;
 	}
}


 ?>