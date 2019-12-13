<?php
session_start();
error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();
if(isset($_POST['submit']))
{
$sql=mysqli_query($con,"insert into doctorSpecilization(specilization) values('".$_POST['doctorspecilization']."')");
$_SESSION['msg']="Doctor Specialization added successfully !!";
}

if(isset($_GET['del']))
		  {
		          mysqli_query($con,"delete from doctorSpecilization where id = '".$_GET['id']."'");
                  $_SESSION['msg']="data deleted !!";
		  }
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Admin | Doctor Specialization</title>
	
		
		<link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
	</head>
	<body>
		<div id="app">		
<?php include('include/sidebar.php');?>
			<div class="app-content">
				
						<?php include('include/header.php');?>
					
				<!-- end: TOP NAVBAR -->
				<div class="main-content" >
					<div class="wrap-content container" id="container">
						
						<div class="container-fluid container-fullw bg-white">
							<div class="row">
								<div class="col-md-12">
										</div>
									<div class="col-lg-12 col-md-12">
											<div class="panel panel-white">
												
												
											</div>
										</div>
									</div>

									<div style="position:absolute;left:350px;top:20px;" class="row">
								<div class="col-md-12">
									<h5 class="over-title margin-bottom-15">Equipments <span class="text-bold">Available</span></h5>
									
									<table class="table table-hover" id="sample-table-1">
										<thead>
											<tr>
												<th class="center">#</th>
												<th>Name</th>
												<th class="hidden-xs">Year of manufacture</th>
												<th>Price</th>
												<th>Quantity</th>
                                                <th>Dealer</th>
                                                
												
											</tr>
										</thead>
										<tbody>
<?php
$sql=mysqli_query($con,"select * from equipments");
$cnt=1;
while($row=mysqli_fetch_array($sql))
{
?>

											<tr>
												<td class="center"><?php echo $cnt;?>.</td>
												<td class="hidden-xs"><?php echo $row['Name'];?></td>
												<td><?php echo $row['year_of_manufacture'];?></td>
												<td><?php echo $row['price_of_equipment'];?></td>
                                                <td><?php echo $row['Quantity'];?></td>
                                                <td><?php echo $row['Dealer'];?></td>
												<td >
								</td>
											</tr>
											
											<?php 
$cnt=$cnt+1;
											 }?>
											
											
										</tbody>
									</table>
								</div>
							</div>
								</div>
							</div>
						</div>
						<!-- end: BASIC EXAMPLE -->
						<!-- end: SELECT BOXES -->
						
					</div>
				</div>
			</div>
			<!-- start: FOOTER -->
	<?php include('include/footer.php');?>
		</div>
		
</html>
