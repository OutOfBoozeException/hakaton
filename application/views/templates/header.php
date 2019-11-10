<html>
	<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<title>LeafSaver</title>
		<link rel="stylesheet" href="https://bootswatch.com/4/flatly/bootstrap.min.css">
		<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/style.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<script src="http://cdn.ckeditor.com/4.10.1/standard/ckeditor.js"></script>
		<link href="https://fonts.googleapis.com/css?family=Merriweather" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Merriweather" rel="stylesheet">
	</head>
	<body style="background-image: url('https://images.pexels.com/photos/911738/pexels-photo-911738.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')">
	<nav class="navbar navbar-expand-lg" style="background-color:#ffffff !important">
		<div class="container">
			<a class="navbar-brand" href="<?php echo base_url(); ?>" style="color: #f4623a !important; font-weight: 800 !important;">LeafSaver</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarColor01">
				<ul class="nav navbar-nav navbar-right">

					<?php if(!$this->session->userdata('logged_in')): 
						header("Location: " . base_url()); 
						exit();	
					?>
						<!--<li class="nav-item">
							<a class="nav-link" href="<?php //echo base_url(); ?>users/login">Login</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="<?php //echo base_url(); ?>users/register">Register</a>
						</li>-->
					<?php endif; ?>

					<?php if($this->session->userdata('logged_in')): ?>
						<li class="nav-item">
							<a class="nav-link" href="<?php echo base_url(); ?>users/logout" style="color: #f4623a !important; font-weight: 800 !important;">Logout</a>
						</li>
					<?php endif; ?>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container" style="background-color:#ffffff !important">
		<?php if ($this->session->flashdata('user_registered')): ?>
			<?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_registered').'</p>'; ?>
		<?php endif; ?>

		<?php if ($this->session->flashdata('post_created')): ?>
			<?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_created').'</p>'; ?>
		<?php endif; ?>

		<?php if ($this->session->flashdata('post_updated')): ?>
			<?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_updated').'</p>'; ?>
		<?php endif; ?>

		<?php if ($this->session->flashdata('post_deleted')): ?>
			<?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_deleted').'</p>'; ?>
		<?php endif; ?>

		<?php if ($this->session->flashdata('category_created')): ?>
			<?php echo '<p class="alert alert-success">'.$this->session->flashdata('category_created').'</p>'; ?>
		<?php endif; ?>

		<?php if ($this->session->flashdata('login_failed')): ?>
			<?php echo '<p class="alert alert-danger">'.$this->session->flashdata('login_failed').'</p>'; ?>
		<?php endif; ?>

		<?php if ($this->session->flashdata('user_loggedin')): ?>
			<?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedin').'</p>'; ?>
		<?php endif; ?>

		<?php if ($this->session->flashdata('user_loggedout')): ?>
			<?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedout').'</p>'; ?>
		<?php endif; ?>