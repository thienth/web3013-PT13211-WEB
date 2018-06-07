<?php 

session_start();

?>
 <!DOCTYPE html>
 <html>
 <head>
 	<title></title>
 	<link rel="stylesheet" type="text/css" href="public/bootstrap/css/bootstrap.min.css">
 	<link rel="stylesheet" type="text/css" href="public/css/main.css">
 </head>
 <body>
 	<div class="container">
 		<ul class="nav justify-content-end">
 			<li class="nav-item">
 				<a class="nav-link active" href="#">Active</a>
 			</li>
 			<li class="nav-item">
 				<a class="nav-link" href="#">Link</a>
 			</li>
 			<li class="nav-item">
 				<a class="nav-link" href="#">Link</a>
 			</li>
 			<?php 
 				require_once './controllers/AuthController.php';
 				$ctr = new AuthController();
 				$ctr->headerAuth();
 			 ?> 			
 		</ul>
 		<form action="search.php">
 			<input type="text" name="keyword" placeholder="Tìm kiếm ...">
 			<button type="submit" class="btn btn-primary btn-sm">Tìm kiếm</button>
 		</form>
 	<?php 
		require_once './controllers/HomeController.php';
		$ctr = new HomeController();
		$ctr->index();
	 ?>

 	</div>

 	<script type="text/javascript" src="public/jquery/jquery.min.js"></script>
 	<script type="text/javascript" src="public/bootstrap/js/bootstrap.min.js"></script>
 	<script type="text/javascript" src="public/sweetalert/sweetalert.min.js"></script>
 	<script type="text/javascript" src="public/jquery-validation/jquery.validate.min.js"></script>
 	<script type="text/javascript" src="public/jquery-validation/additional-methods.js"></script>
 </body>
 </html>