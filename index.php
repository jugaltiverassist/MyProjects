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
    </head>
    <body>
        <div class="container">
            <div class="container-fluid">
            <h1 class="align size"> TIVERASSIT ADMIN PANNEL </h1>
                <div class="row padding">
                   <div class="col-lg-offset-4 col-lg-12 col-md-12 col-sm-12 col-xs-12">           
                        
                        </br>
                        <h2 class="offset">Admin Login</h2>
                        <form method="POST" action="index.php">
                        
                        
                        </br>
                            <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <input type="text" class="form-control align" placeholder="Username" name="username">
                            </div>
                            </div>
                            </br>
                            <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <input type="password" class="form-control align" placeholder="Password" name="password">
                            </div>
                            </div>
                            </br>
                            <div class="row">
                            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
                            <input type="submit" class="btn btn-success form-control" value="LOGIN">
                            </div>
                           
                            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
                            <input type="reset" class="btn btn-danger form-control" value="RESET">
                            </div>
                            
                            </div>
                            <br>
                            <div class="row">
                             <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <a href="register.php" input type="submit" class="btn btn-primary form-control" value="REGISTER">REGISTER</a>
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
                                else{echo "";}  
                                
                                if(!empty($_POST))
                                  {  
                                      $User=$_POST["username"];
                                      $pass=$_POST["password"];
                                      $sql="select * from adminregis where userName = '" .($User)."'AND Password = '".(md5($pass))."'";                                      
                                        $result = $conn->query($sql);
                                        if (password_verify($pass, $_POST["password"])) {
                                            $_POST["Password"]=$pass;
                                            echo "Login Successfull.";
                                        } else {
                                            echo "Login Unsuccessfull.";
                                        }

                                        if ($result->num_rows == 1) {
                                             while($row = $result->fetch_assoc()) {  
                                                 $_SESSION["User"]=$row["userName"];
                                                header("Location: ../Admin/homepage.php");
                                                }
                                            
                                        }
                                        else 
                                        {
                                            echo "Invalid User !! Please try again. " . $conn->error;
                                        }
                                    }
                                    



$conn->close();
?>
                        
                    
                        </form>
                    </div>
                 </div>    
            </div>
        </div>
    
    
    </body>
</html>