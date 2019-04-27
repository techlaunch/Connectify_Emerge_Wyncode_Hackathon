<!DOCTYPE html>
<html lang="en">
<head>
	<!-- SITE TITTLE -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?= $title ?></title>

	<!-- FAVICON -->
	<link href="res/images/favicon.png" rel="shortcut icon">
	<link rel="stylesheet" href="res/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="res/plugins/bootstrap/css/bootstrap-slider.css">
	<!-- Font Awesome -->
	<link href="res/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<link href="res/plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
	<link href="res/plugins/jquery-nice-select/css/nice-select.css" rel="stylesheet">
	<!-- CUSTOM CSS -->
	<link href="res/css/style.css" rel="stylesheet">
</head>

<body class="body-wrapper">

<section>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-expand-lg navbar-light navigation">
					<a class="navbar-brand" href="index.php?page=invitations">
						<img src="res/images/logo.png" alt="">
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ml-auto main-nav">
							<li class="nav-item">
								<a class="nav-link" href="index.php?page=invitations&action=new">Invite</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="index.php?page=invitations">To Do</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="index.php?page=profile">My Profile</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="index.php?page=categories">Categories</a>
							</li>
						</ul>
						<ul class="navbar-nav ml-auto mt-10">
							<li class="nav-item">
								<a class="nav-link text-white add-button" href="index.php">Logout</a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
</section>