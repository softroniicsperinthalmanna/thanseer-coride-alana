<?php
include '../connect.php';
$sql=mysqli_query($con,"SELECT * from my_rides ");
$list=array();
if($sql->num_rows>0)
{
    while($row=mysqli_fetch_assoc($sql))
    {
        $myarray['result']='success';
        $myarray['log']=$row['log_id'];
        $myarray['ride']=$row['ride_id'];
        $myarray['destination']=$row['destination'];
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