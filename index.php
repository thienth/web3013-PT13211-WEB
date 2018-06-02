<?php 
// require_once './models/Post.php';
// require_once './models/User.php';

// $posts = Post::rawQuery("
// 				select 
// 					p.*,
// 					u.id as user_id,
// 					u.email
// 				from posts p
// 				join users u
// 				on p.created_by = u.id
// 				")
// 				->get();
require_once './controllers/HomeController.php';
$ctr = new HomeController();
$ctr->index();



 ?>


 <!-- <!DOCTYPE html>
 <html>
 <head>
 	<title></title>
 	<style type="text/css">
 		.container{
 			width: 600px;
 			margin: auto;
 		}
 	</style>
 </head>
 <body>
 	<div class="container">
 		<form action="search.php">
 			<input type="text" name="keyword" placeholder="Tìm kiếm ...">
 			<button type="submit">Tìm kiếm</button>
 		</form>
 	<?php foreach ($posts as $item): ?>
 		<div>
 			<h2>
 				<a href="detail.php?slug=<?php echo $item->slug ?>"><?php echo $item->title ?></a>
			</h2>
			<p>Tác giả: <b><?php echo $item->email ?></b></p>
 			<div>
 				<img src="<?php echo $item->image ?>" width="400">
 			</div>
 			<div>
 				<?php echo $item->short_desc ?>
 			</div>
 		</div>
 	<?php endforeach ?>
 	</div>
 </body>
 </html> -->