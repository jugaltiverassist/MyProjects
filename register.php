<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
        <link rel="stylesheet" type="text/css" href="../EmpMgmt/Css/Bootstrap.css">
        <link rel="stylesheet" type="text/css" href="../EmpMgmt/Css/Bootstrap-theme.css">
        <link rel="stylesheet" type="text/css" href="../EmpMgmt/Css/style.css">
        <link rel="stylesheet" type="text/css" href="../EmpMgmt/Css/StyleSheet2.css">
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                <br>
                <br>
                <br>               
  <form method="POST" onsubmit="return validateForm()" method="post" action="register.php">
     <div class="row">
        <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-6 col-xs-12">
            <div class="panel panel-primary padded">
                <div class="panel-heading">
                    <span>Register Now</span>
                </div>
                <div class="panel-body">
                        <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Username</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="text" name="uName" class="form-control" placeholder="Username">
                        </div>
                        </div> 
                        <br />
                        <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">                        
                            <label>Email Id</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">                   
                          <input type="email" name="email" class="form-control" placeholder="example@gmail.com">
                        </div>
                        </div> 
                        <br />
                        <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <label>Password</label>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">                    
                            <input type="password" name="passwd" class="form-control" placeholder="*******" >
                        </div>
                        </div>          
                        <br />
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="submit" name="btnRegister" class="btn btn-success form-control" value="Register">
                        </div>
                         <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="reset" name="btnReset" class="btn btn-danger form-control" value="RESET">
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
             else{
                    echo "";
                 }
            if(!empty($_POST))
               {        
                    $sql = "Insert into adminregis
                    (username,emailId,password) 
                    values
                            ('".$_POST["uName"].
                            "','".$_POST["email"].
                            "','".md5($_POST["passwd"]).
                            "')";
                            echo $sql;
                            if ($conn->query($sql) === TRUE) {
                            header("Location: ../empmgmt/index.php");
                            echo "Successfull Register";
                            } else {
                                echo "Not Successfull. Please try again!!". $conn->error;
                            }
                    }
                        $conn->close();
?>  
                </form>
            </div>
         </div>
    </div>
       <script src="../EmpMgmt/js/modernizr.custom.js"></script>
       <script src="../EmpMgmt/js/jquery.js"></script>
       <script src="../EmpMgmt/js/bootstrap.min.js"></script>
     </body>
</html>