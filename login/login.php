<?php
include 'connect.php';
// $log_id=$_POST['log_id'];
$mobile_no=$_POST['mobile_no'];
$password=$_POST['password'];
$sql="";
$sql=mysqli_query($con,"SELECT * FROM login WHERE mobile_no='$mobile_no' AND password='$password'");
// $result=$con->query($sql);
if($sql->num_rows>0) {
    while($row=mysqli_fetch_assoc($sql)){
        $myarray['result']='Login success';
        $myarray['log_id']=$row['log_id'];
    }

    // $myarray['mobile_no']=$row['mobile_no'];
    // $myarray['password']=$row['password'];
    // array_push($list,$myarray);

}
else
{
    $myarray['result']='Login failed';

    // array_push($list,$myarray);

}
echo json_encode($myarray);
// $con->close();
?>