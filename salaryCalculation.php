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
      <div class="container-fluid" style="font-size:14px;">
          <div class="row">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                  <ul class="navbar">
                      <li><a href="../Admin/homepage.php">Home</a></li>
                      <li><a href="" class="active">Salary Calculation</a></li>
                      <li style="float:right"><a href="../Admin/index.php">Logout</a></li>
                  </ul>
                  <form method="POST" >
                      <div class="row">
                          <div class="col-lg-12  col-md-12  col-sm-12  col-xs-12">
                              <div class="panel panel-primary" style="font-size:14px;">
                                  <div class="panel-heading">
                                       <span>Salary Management</span>
                                  </div>
                                  <div class="container-fluid">
                                       <div class="row">
                                          <div class="col-lg-12 col-xs-12 col-sm-12 col-md-12">
                                              <table class="table table-responsive table-hover">
                                                  <TH>Sl/NO.</TH>
                                                  <TH>empName</TH>
                                                  <TH>Present</TH>
                                                  <TH>AL</TH>
                                                  <TH>ALWP</TH>
                                                  <TH>UALWP</TH>
                                                  <TH>OFF</TH>
                                                  <TH>TP</TH>
                                                  <TH>Gross</TH>
                                                  <TH>BASIC</TH>
                                                  <TH>HRA</TH>
                                                  <TH>MA</TH>
                                                  <TH>Total</TH>
                                                  <TH>EarnedAllowances</TH>
                                                  <TH>Allowances</TH>
                                                  <TH>NET</TH>                
    <?php
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "empmgmt";
  
  // Create connection
  $conn = new mysqli($servername, $username, $password, $dbname);
  $i=0;
  $j=0;
  // Check connection
  if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
  } else {
      echo "";
  } 
  $sql="select distinct ae.empId,ae.empName,ae.Designation,ae.salary,
  (select count(status) from attendance where status='Present' and empId=ae.empId) as PresentDays,
  (select count(status) from attendance where status='AL' and empId=ae.empId) as AL,
  (select count(status) from attendance where status='ALWP' and empId=ae.empId) as ALWP,
  (select count(status) from attendance where status='UALWP' and empId=ae.empId) as UALWP, 
  (select count(status) from attendance where status='OFF' and empId=ae.empId) as OFF
  
  
  
  
  
  from addemp ae INNER JOIN attendance a on a.empId=ae.empId";
  
  $result = $conn->query($sql);
  $salaryDetails=array();
  $a=0;
  if ($result->num_rows > 0) {
      while ($row = $result->fetch_assoc()) { 
          $salaryDetail=null;
          
          $empId=$empName=$present=$workingDays=$HRA=$MA=$GROSS=$Tax=$NET=$Basic=$AL=$ALWP=$UALWP=$OFF=$TP=$sal=$allowances=$EarnedAllowances=$Total=0;
          $empId=$row["empId"];
          $empName=$row["empName"];
          $present=$row["PresentDays"];
          $AL=$row["AL"];
          $GROSS=$row["salary"];        
          $ALWP=$row["ALWP"];
          $UALWP=$row["UALWP"];
          $OFF=$row["OFF"];
          $TP=$present+$AL+$OFF;
          $workingDays=$_POST["workingDays"];
          $PerDaySAL=$GROSS/$workingDays;
          $Basic=$GROSS-($GROSS/100)*30;
          $allowances=($GROSS/100)*15;
          $HRA=$GROSS*10/100;
          $MA=($GROSS/100)*5;
          if($UALWP==1){
              $Tax=$allowances-(($allowances*25)/100);
          }
          elseif($UALWP==2){
              $Tax=$allowances-(($allowances/50)/100);
          }
          elseif($UALWP==3){
              $Tax=$allowances-($allowances/100*0);
  
          }
          else{
              $Tax=NA;
          }
          //$sal=$Basic+$HRA+$MA;
          $NET=(($sal+$Tax)/$workingDays)*$TP;
         // $Net=round($NET);
          $salaryDetail=array($empId,$empName,$present,$AL,$ALWP,$UALWP,$OFF,$TP,
          $GROSS,$Basic,$HRA,$MA,$sal,$Tax,$EarnedAllowances,$allowances,round($NET));
          $salaryDetails=array_merge($salaryDetails, array($salaryDetail));
          $sql="Insert into salary(empId,empName,present,AL,ALWP,UALWP,OFF,TP,GROSS,Basic,hra,ma,Total,EarnedAllowances,Allowances,net,perdaysal,sal,tax,workingDays) values
          ($empId,$empName,$present,$AL,$ALWP,$UALWP,$OFF,$TP,$GROSS,$Basic,$HRA,$MA,$Total,$EarnedAllowances,$allowances,$NET,$PerDaySAL,$sal,$Tax,$workingDays)";
          if ($conn->query($sql) === true) {
                 
          } else {
                  echo "Error inserting row : " . $conn->error;
          }
           
      } 
  } else {
      echo "0 results";
  }
  
  for ($i=0; $i<count($salaryDetails); $i++) {
      echo "<tr>";
      for ($j=0;$j<=17;$j++) {
          echo "<td>";
          echo $salaryDetails[$i][$j];
          echo "</td>";        
      }
      echo "</tr>";    
  }
  
  
  
  // print_r($salaryDetails);
  
  $conn->close();
  ?>
   </table>
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