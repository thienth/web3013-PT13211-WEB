<?php 
// 1 lay gia tri slug tren url
// 2 dua vao slug thuc hien cau lenh select * from posts where slug = '$slug'
// 3 lay du lieu trong csdl sau do hien thi ra view

require_once './models/Post.php';

$slug = $_GET['slug'];

$post = Post::where(['slug', '=', $slug])->first();

 ?>
 <!DOCTYPE html>
 <html>
 <head>
 	<title></title>
 </head>
 <body>
 	<div style="width: 600px; margin: auto">
 		<h3><?php echo $post->title ?></h3>
 		<p>
 			<b><?php echo $post->short_desc ?></b>
 		</p>
 		<img src="<?php echo $post->image ?>" width="400">
 		<p>
 			<?php echo htmlspecialchars_decode($post->content) ?>
 		</p>
 	</div>
 </body>
 </html>