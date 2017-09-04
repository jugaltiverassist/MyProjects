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
if(!ISSET( $_POST["empName"]) OR !ISSET( $_POST["pAdd"]) OR !ISSET( $_POST["cAdd"]) OR !ISSET( $_POST["quali"]) OR !ISSET( $_POST["dob"]) OR !ISSET( $_POST["doj"]) OR !ISSET( $_POST["desig"]) OR !ISSET( $_POST["sal"]) OR !ISSET( $_POST["contact"]))
   {              
echo "successfull";
    }
    else
    {
        $empId=$_POST["empId"];
         $sql="UPDATE addemp SET 
            empName= '".$_POST["empName"].
            "' , perAdd= '".$_POST["pAdd"].
            "' , CurrAdd= '".$_POST["cAdd"].
            "' , Quali= '".$_POST["quali"].
            "' , Dob='".$_POST["dob"].
            "' , Doj='".$_POST["doj"].
            "' , Designation='".$_POST["desig"].
            "' , salary='".$_POST["sal"].
            "' , Contact='".$_POST["contact"].
            "' WHERE empId=".$_POST["empId"];

             if ($conn->query($sql) == TRUE) {
               header("Location: ../empmgmt/employeeList.php");
            } else {
                echo "\nError updating row : " . $conn->error;
                echo "\n". $sql;
            }
    }
 

$conn->close();
?>