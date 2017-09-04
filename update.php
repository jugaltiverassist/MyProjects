
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
  <li><a href="" class="active">Update Employee</a></li>
  <li style="float:right"><a href="../Admin/index.php">Logout</a></li>
</ul>
<form method="POST" action="updateTemp.php">
    
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

if(isset($_POST))
    {        
         $empId=$_POST["empId"]; 
         $sql = "select * from addemp where empId = '".$empId."'" ;
         $result = $conn->query($sql);

        if ($result->num_rows > 0)
            {
                // output data of each row
                while($row = $result->fetch_assoc())
                {   
                    $empId = $row["empId"];
                    $empName = $row["empName"];
                    $perAdd = $row["perAdd"];
                    $CurrAdd  = $row["CurrAdd"];
                    $Quali  = $row["Quali"];
                    $Dob = $row["Dob"];
                    $Doj = $row["Doj"];
                    $Designation = $row["Designation"];
                    $salary = $row["salary"];
                    $Contact = $row["Contact"];
                }
            }
        else
            {
            echo "0 results";
            }
    }
$conn->close();
?>

 <div class="row">
        <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-6 col-xs-12">
            <div class="panel panel-primary padded">
                <div class="panel-heading">
                    <span>Update Employee</span>
                </div>
                <div class="panel-body">
                                  <div class="row">
                        <div>
                            <input type="text" name="empId" class="invisible" value="<?php echo $empId; ?>">
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Employee Name</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="text" name="empName" class="form-control" value="<?php echo $empName; ?>">
                        </div>
                    </div>
              
                    <br />
              
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Permanent Address</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="text" name="pAdd" class="form-control" value="<?php echo $perAdd; ?>">
                        </div>
                    </div>
              
                    <br />
                        <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Current Address</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="text" name="cAdd" class="form-control" value="<?php echo $CurrAdd; ?>">
                        </div>
                    </div>
              
                    <br />
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Qualification</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="text" name="quali" class="form-control" value="<?php echo $Quali; ?>">
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Date Of Birth</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="date" name="dob" class="form-control" value="<?php echo $Dob; ?>">
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Date Of Joining</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="date" name="doj" class="form-control" value="<?php echo $Doj; ?>">
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Designation</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="text" name="desig" class="form-control" value="<?php echo $Designation; ?>">
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Salary</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="text" name="sal" class="form-control" value="<?php echo $salary; ?>">
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Contact</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="text" name="contact" class="form-control" value="<?php echo $Contact; ?>">
                        </div>
                    </div>
                   
                    <br />
                     <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="submit" name="btnAddemp" class="btn btn-success form-control" value="UPDATE EMPLOYEE">
                        </div>
                         <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="reset" name="btnReset" class="btn btn-danger form-control" value="RESET">
                        </div>


                        </div>
                        </div>
                        </div>  
                        </form>            
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