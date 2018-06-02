<?php 
require_once './models/Post.php';
class HomeController
{
	public function index(){
		$posts = Post::rawQuery("
				select 
					p.*,
					u.id as user_id,
					u.email
				from posts p
				join users u
				on p.created_by = u.id
				")
				->get();

		include_once './views/listpost.php';
	}
	
}


 ?>