<?php 
session_start();
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
   <form method="POST" action="markAttendance.php">
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
                                <th>Sl/No.</th>
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
                                $sql="Select empId, empName, now() as date from addemp;";           
                                $result = $conn->query($sql);
                                for($i=0; $row=$result->fetch_assoc(); $i++){
                                    ?>
                                    <tr>
                                        <td>
                                        <input type="text" readonly name=<?php echo "EmpId".$i;?> value=<?php echo $row['empId']; ?> text=<?php echo $row['empId']; ?>></td>
                                        <td><?php echo $row['empName']; ?></td>  
                                        <td><?php echo $row['date']; ?></td>
                                        <td>
                                            <input type="radio" class="radio radio-inline" value="Present" name=<?php echo "Attendance".$i;?> >Present
                                            <input type="radio" class="radio radio-inline" value="Absent"  name=<?php echo "Attendance".$i;?> >Absent
                                            <input type="radio" class="radio radio-inline" value="AL" name=<?php echo "Attendance".$i;?> >AL
                                            <input type="radio" class="radio radio-inline" value="ALWP" name=<?php echo "Attendance".$i;?> >ALWP
                                            <input type="radio" class="radio radio-inline" value="UALWP" name=<?php echo "Attendance".$i;?> >UALWP
                                            <input type="radio" class="radio radio-inline" value="OFF" name=<?php echo "Attendance".$i;?> >OFF
                                        </td>
                                        <!-- <td>
                                            <input type="radio" class="radio radio-inline" value="AL" name=<?php echo "Attendance".$i;?> >AL
                                            <input type="radio" class="radio radio-inline" value="ALWP" name=<?php echo "Attendance".$i;?> >ALWP
                                            <input type="radio" class="radio radio-inline" value="UALWP" name=<?php echo "Attendance".$i;?> >UALWP
                                        </td> -->
                                    </tr>
                                    <?php
                                    $_SESSION["counter"]=$i;
                                }
?>
                        </table>
                    </div>
                </div>
                </br>
        <div class="row">
        <div class="col-lg-offset-3 col-lg-5 col-md-5 col-sm-5 col-xs-5">
            <input type="submit" class="btn btn-success form-control" value="Update Attendance">
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
                                $counter;
                                while($row = $result->fetch_assoc())
                                {
                                if(!empty($_POST))
                                {        
                                    $sql = "Insert into attendance 
                                    (empId,empName ,date,status) 
                                    values
                                    ('".$_POST["empId"].
                                    "','".$_POST["empName"].
                                    "','".$_POST["date"].
                                    "','".$_POST["status"].
                                    "')";
                                    //echo $sql;
                                        if ($conn->query($sql) === TRUE) {
                                        header("Location: ../Admin/markAttendance.php");
                                }
                               else 
                                    {
                                        echo "Error inserting row : ";
                                     }
                    }
           }
$conn->close();
?>

        </div>
        </div>
        </br>

        </form>
            </div>
        
        </div>
        
    </div>

    <script src="../js/modernizr.custom.js"></script>
     <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
     </body>
</html>