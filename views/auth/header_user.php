<?php 

$user = $_SESSION['auth'];

 ?>
<li class="nav-item">
	<a class="nav-link" href="profile.php"><?php echo $user['email']; ?></a>
</li>