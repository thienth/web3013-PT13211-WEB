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
	 <?php 
		require_once './controllers/HomeController.php';
		$ctr = new HomeController();
		$ctr->search();
	 ?>
 	</div>
 </body>
 </html>