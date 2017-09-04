<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "empmgmt";

// Create connection
$conn = new mysqli($servername, $username, $password,$dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
else{echo "";} 

if(!empty($_POST))
    {      
        $empId=$_POST["id"];  
         $sql = "Delete from addemp where empId=".$empId."";
echo $sql;
            if ($conn->query($sql) == TRUE) {
               header("Location: ../Admin/employeelist.php");
            } else {
                echo "Error Deleting Employee : " . $conn->error;
            }
    }
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
        <link rel="stylesheet" type="text/css" href="../Css/Bootstrap.css">
        <link rel="stylesheet" type="text/css" href="../Css/Bootstrap-theme.css">
        <link rel="stylesheet" type="text/css" href="../Css/style.css">
        <link rel="stylesheet" type="text/css" href="../Css/StyleSheet2.css">
        <link rel="stylesheet" type="text/css" href="../Css/navbar.css">
       
   
    
    </head>
    <body>
    <div class="container-fluid">
    <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                    <ul class="navbar">
  <li><a href="../Admin/homepage.php">Home</a></li>
  <li><a href="" class="active">Delete Employee</a></li>
  <li style="float:right"><a href="../Admin/index.php">Logout</a></li>
</ul>
<form method="POST" action="deleteemployee.php">
    <div class="row">
        <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-6 col-xs-12">
            <div class="panel panel-primary padded">
                <div class="panel-heading">
                    <span>Delete Employee</span>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Type Employee ID</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="text" class="form-control" name="id">
                        </div>
                    </div>
                    </br>
                     <div class="col-lg-offset-2 col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="submit" role="button" name="btnDelete" class="btn btn-danger form-control" value="DELETE EMPLOYEE">
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
</div>
</div>
</div>
   

    <script src="../js/modernizr.custom.js"></script>
     <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
     </body>
</html>