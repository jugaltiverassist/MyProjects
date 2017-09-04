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
  <li><a href="" class="active">Salary Calculation</a></li>
  <li style="float:right"><a href="../Admin/index.php">Logout</a></li>
</ul>
   <form action="salarycalculation.php" method="POST">
    <div class="row">
        <div class="col-lg-12  col-md-12  col-sm-12  col-xs-12">
            <div class="panel panel-primary padded">
                <div class="panel-heading">
                    <span>Salary Management</span>
                </div>
                <div class="panel-body">
                     <div class="row">
                      <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <label>Enter Number Of Working days</label>                            
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control" name="workingDays">
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <input type="submit" class="btn btn-block btn-success" name="btnSubmit" text="Submit">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
    <script src="../js/modernizr.custom.js"></script>
     <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
     </body>
</html>