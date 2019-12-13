<?php
session_start();
//error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>User  | Dashboard</title>
	</head>
	<body>
		<div id="app">		
<?php include('include/sidebar.php');?>
			<div class="app-content">
				
				<?php include('include/header.php');?>
						
				<!-- end: TOP NAVBAR -->
				<div class="main-content" >
					<div style="position: relative;
  left: 500px;
  top: 5px;" class="wrap-content container" id="container">
						<!-- start: PAGE TITLE -->
						<section id="page-title">
						</section>
							<div  class="container-fluid container-fullw bg-white">
							<div  class="row">
								<div class="col-sm-4">
									<div class="panel panel-white no-radius text-center">
										<div class="panel-body">
											<p class="links cl-effect-1">
												<a href="edit-profile.php">
													Update Profile
												</a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="panel panel-white no-radius text-center">
										<div class="panel-body">
											<p class="cl-effect-1">
												<a href="appointment-history.php">
													View Appointment History
												</a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="panel panel-white no-radius text-center">
										<div class="panel-body">
											
											<p class="links cl-effect-1">
												<a href="book-appointment.php">
													Book Appointment
												</a>
											</p>
										</div>
									</div>
								</div>
							</div>
                        </div>
						
					</div>
				</div>
			</div>

	<?php include('include/footer.php');?>
		
	</body>
</html>
