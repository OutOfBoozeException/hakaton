<!DOCTYPE html>
<html lang="en">

	<head>
		<title>LeafSaver Login</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="icon" type="image/png" href="<?php echo base_url() . 'assets/login/images/icons/favicon.ico' ?>"/>
		<link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/login/vendor/bootstrap/css/bootstrap.min.css' ?>">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css' ?>">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css' ?>">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/login/fonts/iconic/css/material-design-iconic-font.min.css' ?>">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/login/vendor/animate/animate.css' ?>">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/login/vendor/css-hamburgers/hamburgers.min.css' ?>">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/login/vendor/animsition/css/animsition.min.css' ?>">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/login/vendor/select2/select2.min.css' ?>">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/login/vendor/daterangepicker/daterangepicker.css' ?>">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/login/css/util.css' ?>">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/login/css/main.css' ?>">
	</head>
	
	<body style="background-color: #999999;">
		
		<div class="limiter">
			<div class="container-login100">
				<div class="login100-more" style="background-image: url('https://images.pexels.com/photos/1029596/pexels-photo-1029596.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260');"></div>

				<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">

					<?php echo form_open('users/login'); ?>

					<span class="login100-form-title p-b-59">
						Login
					</span>

					<div class="wrap-input100 validate-input" data-validate="Username is required">
						<span class="label-input100">Username</span>
						<input class="input100" type="text" name="username" placeholder="Username...">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn" style="background-color: #f4623a !important">
								Login
							</button>
						</div>
					</div>
						
					<!-- </form> -->
					<?php echo form_close(); ?>
					
				</div> <!-- end of .wrap-login100 -->
			</div> <!-- end of .container -->
		</div> <!-- end of .limiter -->


		<script src="<?php echo base_url() . 'assets/login/vendor/jquery/jquery-3.2.1.min.js' ?>"></script>
		<script src="<?php echo base_url() . 'assets/login/vendor/animsition/js/animsition.min.js' ?>"></script>
		<script src="<?php echo base_url() . 'assets/login/vendor/bootstrap/js/popper.js' ?>"></script>
		<script src="<?php echo base_url() . 'assets/login/vendor/bootstrap/js/bootstrap.min.js' ?>"></script>
		<script src="<?php echo base_url() . 'assets/login/vendor/select2/select2.min.js' ?>"></script>
		<script src="<?php echo base_url() . 'assets/login/vendor/daterangepicker/moment.min.js' ?>"></script>
		<script src="<?php echo base_url() . 'assets/login/vendor/daterangepicker/daterangepicker.js' ?>"></script>
		<script src="<?php echo base_url() . 'assets/login/vendor/countdowntime/countdowntime.js' ?>"></script>
		<script src="<?php echo base_url() . 'assets/login/js/main.js' ?>"></script>

	</body>
	
</html>