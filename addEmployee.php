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
         $sql = "Insert into addemp
        (empName,perAdd,CurrAdd,Quali,Dob,Doj,Designation,salary,Contact) 
        values
        ('".$_POST["empName"].
        "','".$_POST["pAdd"].
        "','".$_POST["cAdd"].
        "','".$_POST["quali"].
        "','".$_POST["dob"].
        "','".$_POST["doj"].
        "','".$_POST["desig"].
        "','".$_POST["sal"].
        "','".$_POST["contact"].
        "')";
        //echo $sql;



            if ($conn->query($sql) === TRUE) {
               header("Location: ../Admin/employeelist.php");
            } else {
                echo "Error inserting row : " . $conn->error;
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
  <li><a href="" class="active">Add Employee</a></li>
  <li style="float:right"><a href="../Admin/index.php">Logout</a></li>
</ul>
  <form method="POST" action="addEmployee.php">
     <div class="row">
        <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-6 col-xs-12">
            <div class="panel panel-primary padded">
                <div class="panel-heading">
                    <span>Add Employee</span>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Employee Name</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="text" name="empName" class="form-control">
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Email Address</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="email" name="empEmaial" class="form-control">
                        </div>
                    </div>
                    <br />
                    <!-- <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Password</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="password" name="empPass" class="form-control">
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Confirm Password</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="password" name="empPass" class="form-control">
                        </div>
                    </div>
                    <br /> -->
              
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Permanent Address</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="text" name="pAdd" class="form-control">
                        </div>
                    </div>
              
                    <br />
                        <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Current Address</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="text" name="cAdd" class="form-control">
                        </div>
                    </div>
              
                    <br />
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Qualification</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="text" name="quali" class="form-control">
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Date Of Birth</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="date" name="dob" class="form-control">
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Date Of Joining</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="date" name="doj" class="form-control">
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Designation</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="text" name="desig" class="form-control">
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Salary</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="text" name="sal" class="form-control">
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Contact</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="text" name="contact" class="form-control">
                        </div>
                    </div>
                   
                    <br />
                     <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="submit" name="btnAddemp" class="btn btn-success form-control" value="ADD EMPLOYEE">
                        </div>
                         <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="reset" name="btnReset" class="btn btn-danger form-control" value="RESET">
                        </div>
                        </div>
                        </div>
                        </div>
                        </div>  
                        </form>            
                        </div>
            </div>
        </div>
     </div>
  
    <script src="../js/modernizr.custom.js"></script>
     <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
     </body>
</html>