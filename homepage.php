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
        <link rel="stylesheet" type="text/css" href="../Css/jumbotron.css">
    </head>
    <body>
    <div class="container-fluid">
        <div class="row">
                <ul class="navbar">
                    <div class="col-lg-2 col-md-2 col-sm-3 col-xs-3 ">
                    <li><a href="" class="active">Home</a></li>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12 ">
                        <li class="alert-info pull-right">
                            <a>
                            <?php echo "Welcome " . $_SESSION["User"];
                            ?>
                            </a>  
                        </li>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-3 col-xs-3 ">
                    <li class="alert-dismissible pull-right"><a href="../Admin/index.php">Logout</a></li>
                    </div>
                </ul>
        </div>
    </div>

<div class="container panel panel-danger panel-heading">
    <div class="panel panel-danger">
        <div class="panel-heading">
        
        <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <a href="addEmployee.php" class="jumbotron btn btn-block btn-success">
                        Add Employee
                    </a> 
                </div>
                
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <a href="updateEmployee.php" class="jumbotron btn btn-block btn-primary">
                        Update Employee
                    </a>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <a href="deleteEmployee.php" class="jumbotron btn btn-block btn-warning">
                        Delete Employee
                    </a>
                </div>
        </div>  
        <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <a href="attendance.php" class="jumbotron btn btn-block btn-info">
                        Attendance
                    </a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <a href="employeeList.php" class="jumbotron btn btn-block btn-danger">
                        Employee List
                    </a>
                </div>
        
            
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <a href="attendtemp.php" class="jumbotron btn btn-block btn-primary">
                        Daily Attendance
                    </a>
                </div>
                </div>
                <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <a href="getSalDetails.php" class="jumbotron btn btn-block btn-warning">
                        Get Salary Details
                    </a>
                </div>
            </div>
        </div>
    <div>
</div>
    <script src="../js/modernizr.custom.js"></script>
     <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
     </body>
</html>