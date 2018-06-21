<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<?php 
		include 'app/views/_share/header.php';

	 ?>
	<form action="login" method="post">
		<div>
			Email: <input type="text" name="email">
		</div>
		<div>
			Password: <input type="password" name="password">
		</div>
		<div>
			<button type="submit">Login</button>
		</div>
	</form>
</body>
</html>