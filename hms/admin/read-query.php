<?php
session_start();
error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();


if(isset($_GET['del']))
		  {
		          mysqli_query($con,"delete from doctors where id = '".$_GET['id']."'");
                  $_SESSION['msg']="data deleted !!";
		  }
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Admin | Manage Read Queries</title>

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
						

									<div style="position:absolute;left:300px;top:20px;" class="row">
								<div class="col-md-12">
									<h5 class="over-title margin-bottom-15">Manage <span class="text-bold">Read Queries</span></h5>
									<table class="table table-hover" id="sample-table-1">
										<thead>
											<tr>
												<th class="center">#</th>
												<th>Name</th>
												<th class="hidden-xs">Email</th>
												<th>Contact No. </th>
												<th>Message </th>
												<th>Action</th>
												
											</tr>
										</thead>
										<tbody>
<?php
$sql=mysqli_query($con,"select * from tblcontactus where IsRead is not null");
$cnt=1;
while($row=mysqli_fetch_array($sql))
{
?>

											<tr>
												<td class="center"><?php echo $cnt;?>.</td>
												<td class="hidden-xs"><?php echo $row['fullname'];?></td>
												<td><?php echo $row['email'];?></td>
												<td><?php echo $row['contactno'];?></td>
												<td><?php echo $row['message'];?></td>
												
												<td >
												<div class="visible-md visible-lg hidden-sm hidden-xs">
							<a href="query-details.php?id=<?php echo $row['id'];?>" class="btn btn-transparent btn-lg" title="View Details"><i class="fa fa-file"></i></a>
												</div>
												<div class="visible-xs visible-sm hidden-md hidden-lg">
												</div></td>
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
						
					</div>
				</div>
			</div>
			<!-- start: FOOTER -->
	<?php include('include/footer.php');?>

	</body>
</html>
