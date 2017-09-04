
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
<form method="POST" action="update.php">
     <div class="row">
        <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-6 col-xs-12">
            <div class="panel panel-primary padded">
                <div class="panel-heading">
                    <span>Employee Upadte</span>
                </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                                <label>Type Employee Id to Update</label>
                             </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                            <input type="text" name="empId" class="form-control">
                        </div>
                        </br>
                        </br>
                    
                        <div class="row">
                            <div class="col-lg-offset-3 col-lg-6 col-md-5 col-sm-6 col-xs-12">
                                <input type="submit" name="btnSubmit" class="btn btn-success form-control" value="Update Employee">
                            </div>
                        </div>
            </div>
        </div>
    </div> 
        </div>
         </div>
        </br>\
     </form>
     </div>
     </div>
     </div>
   

    <script src="../js/modernizr.custom.js"></script>
     <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
     </body>
</html>