<?php
include '../connect.php';
$log_id = $_POST['log_id'];
$lat = $_POST['lat'];
$long = $_POST['long'];
$date = $_POST['date'];
$message = $_POST['message'];
$sql = mysqli_query($con, "INSERT INTO help (log_id, date, message, lat, `long`) VALUES ('$log_id', '$date', '$message', '$lat', '$long')");
if ($sql) {
    $myarray['result'] = 'success';
} else {
    $myarray['result'] = 'failed';
}
echo json_encode($myarray);
?>
