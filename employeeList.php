
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
  <li><a href="" class="active">Employee List</a></li>
  <li style="float:right"><a href="../Admin/index.php">Logout</a></li>
</ul>

 <div class="row">
        <div class="col-lg-12  col-md-12  col-sm-12  col-xs-12">
            <div class="panel panel-primary padded">
                <div class="panel-heading">
                    <span>Employee List</span>
                </div>
                <div class="panel-body">
                     <div class="row">
                      <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <label>Employee Id</label>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <label>Employee Name</label>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <label>Designation</label>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <label>Contact No</label>
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
$sql="Select empId,empName,Designation,Contact from addemp";

$result = $conn->query($sql);

if ($result->num_rows > 0) {

    // output data of each row
    while($row = $result->fetch_assoc()) {        

        echo "<div class="."row".">";
            echo "<div class="."col-lg-3".">";
         echo " <label class="."control-label".">" . $row["empId"]. "</label>";
         echo "   </div>";

         echo "   <div class="."col-lg-3".">";
         echo "       <label class="."control-label".">" . $row["empName"]. " </label>";
         echo "   </div>";

         echo "   <div class="."col-lg-3".">";
         echo "       <label class="."control-label"."> " . $row["Designation"]. "</label>";
         echo "   </div>";
         echo "   <div class="."col-lg-3".">";
         echo "       <label class="."control-label"."> " . $row["Contact"]. "</label>";
         echo "   </div>";
        echo "     </div>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>

                </div>
            </div>
        </div>
    </div>

   

    <script src="../js/modernizr.custom.js"></script>
     <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
     </body>
</html>