<?php
include 'connect.php';
$time=$_POST['time'];
$date=$_POST['date'];
$destination=$_POST['destination'];
$sql=mysqli_query($con,"INSERT INTO my_rides (time,date,destination) VALUES ('$time','$date','$destination')");
if ($sql) {
    $myarray['result']='success';
}
else
{
    $myarray['result']='failed';

}
echo json_encode($myarray);

?>