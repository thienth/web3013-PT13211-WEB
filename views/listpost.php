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