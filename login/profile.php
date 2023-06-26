<?php
include 'connect.php';
$log_id=$_POST['log_id'];
// $first_name=$_POST['first_name'];
// $last_name=$_POST['last_name'];
// $mobile_no=$_POST['mobile_no'];
// $sql="";
$sql=mysqli_query($con,"SELECT * FROM register where log_id=$log_id");
$sql2=mysqli_query($con,"SELECT * FROM login where log_id=$log_id");

$list=array();
// $sql1=mysqli_query($con,"SELECT * from login  WHERE log_id='$log_id'");
// $user_id=mysqli_insert_id($con);
// $user_id=mysqli_select_db();
// $sql2=mysqli_query($con,"SELECT * from register "); 
// $result=$con->query($sql);

if($sql->num_rows>0 && $sql2->num_rows>0)
{
    while($row=mysqli_fetch_assoc($sql))
        {
          $myarray['result']=' success';
          $myarray['log_id']=$row['log_id'];
          $myarray['first_name']=$row['first_name'];
          $myarray['last_name']=$row['last_name'];

          array_push($list,$myarray);

         }
         while($row=mysqli_fetch_assoc($sql2))
         {
           $myarray['mobile_no']=$row['mobile_no'];
           array_push($list,$myarray);

          }

    // $myarray['mobile_no']=$row['mobile_no'];
    // $myarray['password']=$row['password'];
    // array_push($list,$myarray);

}
else
{
    $myarray['result']='failed';
    array_push($list,$myarray);


    // array_push($list,$myarray);

}
echo json_encode($myarray);
// $con->close();
?>