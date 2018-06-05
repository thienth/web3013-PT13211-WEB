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
 			<li class="nav-item">
 				<a class="nav-link" href="add-new.php">Thêm bài viết</a>
 			</li>
 		</ul>
 		<div class="col-md-6 offset-md-3">
 			<form action="save-add.php" method="post" enctype="multipart/form-data">
 				<div class="form-group">
 					<label>Tiêu đề</label>
 					<input type="text" name="title" placeholder="Nhập tiêu đề" class="form-control">
 				</div>
 				<div class="form-group">
 					<label>Đường dẫn</label>
 					<input type="text" name="slug" placeholder="Nhập đường dẫn" class="form-control">
 				</div>
 				<div class="form-group">
 					<label>Ảnh</label>
 					<input type="file" name="image" class="form-control">
 				</div>
 				<div class="form-group">
 					<label>Mô tả ngắn</label>
 					<textarea class="form-control editor" name="short_desc" ></textarea>
 				</div>
 				<div class="form-group">
 					<label>Nội dung</label>
 					<textarea class="form-control editor" name="content" ></textarea>
 				</div>
 				<div class="text-center">
 					<button type="submit" class="btn btn-sm btn-success">Lưu</button>
 					<a href="index.php" class="btn btn-sm btn-danger">Hủy</a>
 				</div>
 			</form>
 		</div>

 	</div>

 	<script type="text/javascript" src="public/jquery/jquery.min.js"></script>
 	<script type="text/javascript" src="public/bootstrap/js/bootstrap.min.js"></script>
 	<script type="text/javascript" src="public/sweetalert/sweetalert.min.js"></script>
 	<script type="text/javascript" src="public/jquery-validation/jquery.validate.min.js"></script>
 	<script type="text/javascript" src="public/jquery-validation/additional-methods.js"></script>
 	<script type="text/javascript" src="public/tinymce/tinymce.min.js"></script>
 	<script type="text/javascript">
 		tinymce.init({ selector:'textarea.editor' });
 	</script>
 </body>
 </html>