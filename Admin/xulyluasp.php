<?php
if(isset($_POST['create']))
{
 
    require '../inc/myconnect.php';
    $name = $_POST['name'];
    $hinhanh = $_FILES['hinhanh']['name'];
    move_uploaded_file($_FILES['hinhanh']['tmp_name'] , '../images/'.$_FILES['hinhanh']['name']);
    $manhasx = $_POST['manhasx'];
    $ngay = $_POST['ngay'];
    $gia = $_POST['gia'];
    $khuyenmai  = $_POST['khuyenmai'];
    $giakhuyenmai = $_POST['giakhuyenmai'];
    $mota = $_POST['editor1'];
    $sql="INSERT INTO  sanpham (Ten,HinhAnh,Manhasx,date,Gia,KhuyenMai,Mota,giakhuyenmai) 
    VALUES ('$name','$hinhanh' ,'$manhasx','$ngay',' $gia','$khuyenmai','$mota','$giakhuyenmai') ";
    // echo  $mk;
    if (mysqli_query($conn, $sql)) {
        header('Location: qlysanpham.php');

    } else {
      echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

 ?>