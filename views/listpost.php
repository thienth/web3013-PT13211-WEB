<div class="row">
<?php foreach ($posts as $item): ?>
	<div class="col-md-4">
		<div class="card mb-3" >
		  <div class="card-header">
		  	<a href="detail.php?slug=<?php echo $item->slug ?>"><?php echo $item->title ?></a>
		  </div>
		  <div class="card-body">
		    <img src="<?php echo $item->image ?>" class="img-fluid">
		    <p>Tác giả: <b><?php echo $item->email ?></b></p>
		    <?php echo htmlspecialchars_decode($item->short_desc) ?>
		  </div>
		</div>
	</div>
<?php endforeach ?>
</div>