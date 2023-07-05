<?php
include '../connect.php';
$pool_id=$_POST['pool_id'];
$starting_point=$_POST['starting_point'];
$destination=$_POST['destination'];
$vehicle_no=$_POST['vehicle_no'];
$date=$_POST['date'];
$time=$_POST['time'];
$sql=mysqli_query($con,"UPDATE offer_pool set starting_point='$starting_point',destination='$destination',vehicle_no='$vehicle_no',date='$date',time='$time' where pool_id='$pool_id'");
if($sql)
{
    $myArray['result']='success';
}
else
{
    $myArray['result']='faild';
}
echo json_encode($myArray);
?>