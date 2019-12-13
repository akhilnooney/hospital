<?php
session_start();
error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Admin | User Session Logs</title>
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
						

									<div style="position:absolute;left:250px;top:40px;" class="row">
								<div class="col-md-12">
									
									<p style="color:red;"><?php echo htmlentities($_SESSION['msg']);?>
								<?php echo htmlentities($_SESSION['msg']="");?></p>	
									<table class="table table-hover" id="sample-table-1">
										<thead>
											<tr>
												<th class="center">#</th>
												<th class="hidden-xs">User id</th>
												<th>Username</th>
												<th>User IP</th>
												<th>Login time</th>
												<th>Logout Time </th>
												<th> Status </th>
												
												
											</tr>
										</thead>
										<tbody>
<?php
$sql=mysqli_query($con,"select * from userlog ");
$cnt=1;
while($row=mysqli_fetch_array($sql))
{
?>

											<tr>
												<td class="center"><?php echo $cnt;?>.</td>
												<td class="hidden-xs"><?php echo $row['uid'];?></td>
												<td class="hidden-xs"><?php echo $row['username'];?></td>
												<td><?php echo $row['userip'];?></td>
												<td><?php echo $row['loginTime'];?></td>
												<td><?php echo $row['logout'];?>
												</td>
												
												<td>
<?php if($row['status']==1)
{
	echo "Success";
}
else
{
	echo "Failed";
}?>

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
						
						<!-- end: BASIC EXAMPLE -->
						<!-- end: SELECT BOXES -->
						
					</div>
				</div>
			</div>
			<!-- start: FOOTER -->
	<?php include('include/footer.php');?>
	
	</body>
</html>
