<?php 
require_once './models/Post.php';
require_once './models/User.php';

$posts = Post::all();
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