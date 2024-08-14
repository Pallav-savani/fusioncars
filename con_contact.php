<?php
include("connection/connect.php");

if(!$con){
    die("connection faild:".mysqli_connect_error());
}

if(isset($_POST['send']))
{
    $contact_name=$_POST['con_name'];
    $contact_email=$_POST['con_email'];
    $contact_num=$_POST['con_num'];
    $contact_msg=$_POST['con_msg'];

    $checkuser="select * from contact_us where contact_name='$contact_name'";
    $checkuser1="select * from contact_us where contact_email='$contact_email'";
    $checkuser2="select * from contact_us where contact_number='$contact_num'";
    $checkuser3="select * from contact_us where contact_msg='$contact_msg'";

    $result1=mysqli_query($con,$checkuser);
    $result2=mysqli_query($con,$checkuser1);
    $result3=mysqli_query($con,$checkuser2);
    $result4=mysqli_query($con,$checkuser3);

    $count=mysqli_num_rows($result1);
    $count1=mysqli_num_rows($result2);
    $coun2=mysqli_num_rows($result3);
    $count3=mysqli_num_rows($result4);

    if($count>0)
    {
        echo"<script>alert('Your message Cannot sended..!!');window.location='index.php #contact';</script>";
   
    }
    if($count>0)
    {
        echo"<script>alert('Your message Cannot sended..!!');window.location='index.php #contact';</script>";
    }
    else 
    {
        $sql_query="insert into contact_us(contact_name,contact_email,contact_number,contact_msg) values('$contact_name','$contact_email','$contact_num','$contact_msg')";
        if (mysqli_query ( $con , $sql_query ) )
        {
            echo"<script>alert('Thank you for Contact Us..!!');window.location='index.php #contact';</script>";
        }
        else
        {
           echo "ERROR:". $Sql ."". mysqli_error($con);
        }
    }
    mysqli_close($con);
}
?>