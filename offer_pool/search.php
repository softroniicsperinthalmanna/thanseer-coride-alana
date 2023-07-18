<?php
include '../connect.php';
$destination=$_POST['destination'];
// $log_id=$_POST['log_id'];
$sql=mysqli_query($con,"SELECT * from offer_pool where destination=$destination");
// $sql=mysqli_query($con,"SELECT * from offer_pool where log_id=$log_id");

$list=array();
if($sql->num_rows>0)
{
    while($row=mysqli_fetch_assoc($sql))
    {
        $myarray['result']='success';
        $myarray['pool_id']=$row['pool_id'];
        $myarray['starting_point']=$row['starting_point'];
        $myarray['destination']=$row['destination'];
        $myarray['vehicle_no']=$row['vehicle_no'];
        $myarray['date']=$row['date'];
        $myarray['time']=$row['time'];
        array_push($list,$myarray);
        
    }
}
else
{
    $myarray['result']='failed';
    array_push($list,$myarray);
}
echo json_encode($list);
?>