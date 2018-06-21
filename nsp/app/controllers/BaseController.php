<?php 
use Jenssegers\Blade\Blade;
class BaseController{

	protected function view($viewName, $params){
		$blade = new Blade('storage', 'cache');
		echo $blade->make($viewName, $params);
	}

}
 ?>
