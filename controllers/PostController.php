<?php 
/**
 * 
 */
require_once './models/Post.php';
class PostController
{
	
	public function addNew(){
		$title = $_POST['title'];
		$slug = $_POST['slug'];
		$image = $_FILES['image'];
		$short_desc = $_POST['short_desc'];
		$content = $_POST['content'];
		$imgUrl = "";

		

		if($image['size'] > 0){
			$ext = pathinfo($image['name'], PATHINFO_EXTENSION);
			$fileName = $slug. '-' . uniqid() . '.' . $ext;
			move_uploaded_file($image['tmp_name'], 'public/uploads/'.$fileName);
			$imgUrl = 'public/uploads/'.$fileName;
		}
		

		Post::rawQuery("
			insert into posts 
				(title, slug, image, short_desc, content)
			values
				('$title', '$slug', '$imgUrl', '$short_desc', '$content')

		")->execute();

		header('location: index.php');
		
	}
}

 ?>