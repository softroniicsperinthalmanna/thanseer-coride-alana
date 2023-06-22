<?php
include 'connect.php';
$first_name=$_POST['first_name'];
$last_name=$_POST['last_name'];
$mobile_no=$_POST['mobile_no'];
$password=$_POST['password'];
$sql1=mysqli_query($con,"INSERT into login(mobile_no,password) values ('$mobile_no','$password')");
$user_id=mysqli_insert_id($con);
$sql2=mysqli_query($con,"INSERT into register(first_name,last_name,log_id) values('$first_name','$last_name','$user_id')"); 

if($sql1 && $sql2)
{
    $myarray['result']='success';
}
else
{
    $myarray['result']='faild';
}
echo json_encode($myarray);
?>