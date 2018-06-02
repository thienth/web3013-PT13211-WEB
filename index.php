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
 		<form action="search.php">
 			<input type="text" name="keyword" placeholder="Tìm kiếm ...">
 			<button type="submit">Tìm kiếm</button>
 		</form>
 	<?php 
		require_once './controllers/HomeController.php';
		$ctr = new HomeController();
		$ctr->index();
	 ?>

 	</div>
 </body>
 </html>