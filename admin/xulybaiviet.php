<?php
	include('../db/connect.php');
?>
<?php
	if(isset($_POST['thembaiviet'])){
		$tenbaiviet = $_POST['tenbaiviet'];
		$hinhanh = $_FILES['hinhanh']['name'];
		$danhmuc = $_POST['danhmuc'];
		$chitiet = $_POST['chitiet'];
		$mota = $_POST['mota'];
		$path = '../uploads/';
		
		$hinhanh_tmp = $_FILES['hinhanh']['tmp_name'];
		$sql_insert_product = mysqli_query($con,"INSERT INTO tbl_baiviet(tenbaiviet,tomtat,noidung,danhmuctin_id,baiviet_image) values ('$tenbaiviet','$mota','$chitiet','$danhmuc','$hinhanh')");
		move_uploaded_file($hinhanh_tmp,$path.$hinhanh);
	}elseif(isset($_POST['capnhatbaiviet'])) {
		$id_update = $_POST['id_update'];
		$tenbaiviet = $_POST['tenbaiviet'];
		$hinhanh = $_FILES['hinhanh']['name'];
		$hinhanh_tmp = $_FILES['hinhanh']['tmp_name'];
	
		$danhmuc = $_POST['danhmuc'];
		$chitiet = $_POST['chitiet'];
		$mota = $_POST['mota'];
		$path = '../uploads/';
		if($hinhanh==''){
			$sql_update_image = "UPDATE tbl_baiviet SET tenbaiviet='$tenbaiviet',noidung='$chitiet',tomtat='$mota',danhmuctin_id='$danhmuc' WHERE baiviet_id='$id_update'";
		}else{
			move_uploaded_file($hinhanh_tmp,$path.$hinhanh);
			$sql_update_image = "UPDATE tbl_baiviet SET tenbaiviet='$tenbaiviet',noidung='$chitiet',tomtat='$mota',danhmuctin_id='$danhmuc',baiviet_image='$hinhanh' WHERE baiviet_id='$id_update'";
		}
		mysqli_query($con,$sql_update_image);
	}
	
?> 
<?php
	if(isset($_GET['xoa'])){
		$id= $_GET['xoa'];
		$sql_xoa = mysqli_query($con,"DELETE FROM tbl_baiviet WHERE baiviet_id='$id'");
	} 
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Sản Phẩm</title>
	<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <div class="collapse navbar-collapse" id="navbarNav">
	    <ul class="navbar-nav">
	      <li class="nav-item active">
	        <a class="nav-link" href="xulydonhang.php">Đơn Hàng <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="xulydanhmuc.php">Danh Mục</a>
	      </li>
	       <li class="nav-item">
	        <a class="nav-link" href="xulydanhmucbaiviet.php">Danh Mục Bài viết</a>
	      </li>
	       <li class="nav-item">
	        <a class="nav-link" href="xulybaiviet.php">Bài Viết</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="xulysanpham.php">Sản Phẩm</a>
	      </li>
	       <li class="nav-item">
	        <a class="nav-link" href="xulykhachhang.php">Khách Hàng</a>
	      </li>
		  <li class="nav-item">
	         <a class="nav-link" href="xulylienhe.php">Phản Hồi</a>
	      </li>
	      
	    </ul>
	  </div>
	</nav><br><br>
	<div class="container">
		<div class="row">
		<?php
			if(isset($_GET['quanly'])=='capnhat'){
				$id_capnhat = $_GET['capnhat_id'];
				$sql_capnhat = mysqli_query($con,"SELECT * FROM tbl_baiviet WHERE baiviet_id='$id_capnhat'");
				$row_capnhat = mysqli_fetch_array($sql_capnhat);
				$id_category_1 = $row_capnhat['danhmuctin_id'];
				?>
				<div class="col-md-4">
				<h4>Cập Nhật Bài Viết</h4>
				
				<form action="" method="POST" enctype="multipart/form-data">
					<label>Tên Bài Viết</label>
					<input type="text" class="form-control" name="tenbaiviet" value="<?php echo $row_capnhat['tenbaiviet'] ?>"><br>
					<input type="hidden" class="form-control" name="id_update" value="<?php echo $row_capnhat['baiviet_id'] ?>">
					<label>Hình Ảnh</label>
					<input type="file" class="form-control" name="hinhanh"><br>
					<img src="../uploads/<?php echo $row_capnhat['baiviet_image'] ?>" height="80" width="80"><br>
					
				
					<label>Mô Tả</label>
					<textarea class="form-control" rows="10" name="mota"><?php echo $row_capnhat['tomtat'] ?></textarea><br>
					<label>Chi Tiết</label>
					<textarea class="form-control" rows="10" name="chitiet"><?php echo $row_capnhat['noidung'] ?></textarea><br>
					<label>Danh Mục</label>
					<?php
					$sql_danhmuc = mysqli_query($con,"SELECT * FROM tbl_danhmuc_tin ORDER BY danhmuctin_id DESC"); 
					?>
					<select name="danhmuc" class="form-control">
						<option value="0">-----Chọn Danh Mục-----</option>
						<?php
						while($row_danhmuc = mysqli_fetch_array($sql_danhmuc)){
							if($id_category_1==$row_danhmuc['danhmuctin_id']){
						?>
						<option selected value="<?php echo $row_danhmuc['danhmuctin_id'] ?>"><?php echo $row_danhmuc['tendanhmuc'] ?></option>
						<?php 
							}else{
						?>
						<option value="<?php echo $row_danhmuc['danhmuctin_id'] ?>"><?php echo $row_danhmuc['tendanhmuc'] ?></option>
						<?php
							}
						}
						?>
					</select><br>
					<input type="submit" name="capnhatbaiviet" value="Cập Nhật Bài Viết" class="btn btn-default">
				</form>
				</div>
			<?php
			}else{
				?> 
				<div class="col-md-4">
				<h4>Thêm Bài Viết</h4>
				
				<form action="" method="POST" enctype="multipart/form-data">
					<label>Tên Sản Phẩm</label>
					<input type="text" class="form-control" name="tenbaiviet" placeholder="Tên Bài Viết"><br>
					<label>Hình Ảnh</label>
					<input type="file" class="form-control" name="hinhanh"><br>

					<label>Mô Tả</label>
					<textarea class="form-control" name="mota"></textarea><br>
					<label>Chi Tiết</label>
					<textarea class="form-control" name="chitiet"></textarea><br>
					<label>Danh Mục</label>
					<?php
					$sql_danhmuc = mysqli_query($con,"SELECT * FROM tbl_danhmuc_tin ORDER BY danhmuctin_id DESC"); 
					?>
					<select name="danhmuc" class="form-control">
						<option value="0">-----Chọn Danh Mục-----</option>
						<?php
						while($row_danhmuc = mysqli_fetch_array($sql_danhmuc)){
						?>
						<option value="<?php echo $row_danhmuc['danhmuctin_id'] ?>"><?php echo $row_danhmuc['tendanhmuc'] ?></option>
						<?php 
						}
						?>
					</select><br>
					<input type="submit" name="thembaiviet" value="Thêm bài viết" class="btn btn-default">
				</form>
				</div>
				<?php
			} 
			
				?>
			<div class="col-md-8">
				<h4>Liệt Kê Bài Viết</h4>
				<?php
				$sql_select_bv = mysqli_query($con,"SELECT * FROM tbl_baiviet,tbl_danhmuc_tin WHERE tbl_baiviet.danhmuctin_id=tbl_danhmuc_tin.danhmuctin_id ORDER BY tbl_baiviet.baiviet_id DESC"); 
				?> 
				<table class="table table-bordered ">
					<tr>
						<th>Thứ Tự</th>
						<th>Tên Sản Phẩm</th>
						<th>Hình Ảnh</th>
						<th>Danh Mục</th>
						<th>Quản lý</th>
					</tr>
					<?php
					$i = 0;
					while($row_bv = mysqli_fetch_array($sql_select_bv)){ 
						$i++;
					?> 
					<tr>
						<td><?php echo $i ?></td>
						<td><?php echo $row_bv['tenbaiviet'] ?></td>
						<td><img src="../uploads/<?php echo $row_bv['baiviet_image'] ?>" height="100" width="80"></td>

						<td><?php echo $row_bv['tendanhmuc'] ?></td>
						
						<td><a href="?xoa=<?php echo $row_bv['baiviet_id'] ?>">Xóa</a> || <a href="xulybaiviet.php?quanly=capnhat&capnhat_id=<?php echo $row_bv['baiviet_id'] ?>">Cập Nhật</a></td>
					</tr>
				<?php
					} 
					?> 
				</table>
			</div>
		</div>
	</div>
	
</body>
</html>