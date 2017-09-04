<?php 
session_start();
echo $_SESSION["counter"];
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
  <li><a href="" class="active">Attendance</a></li>
  <li style="float:right"><a href="../Admin/index.php">Logout</a></li>
</ul>
  <form method="POST" action="attendance.php">
    <div class="row">
        <div class="col-lg-12  col-md-12  col-sm-12  col-xs-12">
            <div class="panel panel-primary padded">
                <div class="panel-heading">
                    <span>Attendance</span>
                </div>
                <div class="panel-body">
                     <div class="row">
                        <table class="table table-responsive table-hover table-stripped table-bordered" border="1" cellspacing="0" cellpadding="2">
                        <thead>
                            <tr>
                                <th>Employee Id</th>
                                <th>Employee Name</th>
                                <th>Date</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                              <?php
                                $servername = "localhost";
                                $username = "root";
                                $password = "";
                                $dbname = "empmgmt";

                                // Create connection
                                $conn = new mysqli($servername, $username, $password, $dbname);

                                // Check connection
                                if ($conn->connect_error) {
                                    die("Connection failed: " . $conn->connect_error);
                                }
                                else{echo "";} 
                            
                                if(!empty($_POST))
                                {  
                                    $coun=$_SESSION["counter"];
                                    for($i=0; $i <= $coun; $i++)
                                    {
                                        $idname="EmpId".$i;
                                        $StatusAtt="Attendance".$i;
                                        $sql = "Insert into attendance (empId,date,status) 
                                    values
                                    (".$_POST[$idname].",now()". ",'".$_POST[$StatusAtt]."')";
                                    echo $sql;
                                    if ($conn->query($sql) === TRUE) {
                                        header("Location: ../Admin/Attendance.php");
                                     }
                               else {
                                echo "Error inserting row : " . $conn->error;
                                    }
                                    }
                                       
                    
           }
$conn->close();
?>
                        </table>

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