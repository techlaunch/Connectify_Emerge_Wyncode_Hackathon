<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>List of users</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="res/styles.css">
</head>
<body>
	<div class="container-fluid">
		<div class="row no-gutter">
			<div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
				<div class="col-md-8 col-lg-6">
					<div class="login d-flex align-items-center py-5">
					<div class="container">
						<div class="row">
						<div class="col-md-9 col-lg-8 mx-auto">
							<h3 class="login-heading mb-4">Welcome back!</h3>
							<form>
								<div class="form-label-group">
									<input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
									<label for="inputEmail">Email address</label>
								</div>

								<div class="form-label-group">
									<input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
									<label for="inputPassword">Password</label>
								</div>

								<button class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">Sign in</button>
							</form>
						</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>