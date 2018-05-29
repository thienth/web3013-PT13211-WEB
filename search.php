<?php 
require_once './models/Post.php';
$keyword = $_GET['keyword'];

$posts = Post::rawQuery("
				select 
					p.*,
					u.id as user_id,
					u.email
				from posts p
				join users u
				on p.created_by = u.id
				where title like '%$keyword%'
				")
				->get();

 ?>

 <!DOCTYPE html>
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
 </html>