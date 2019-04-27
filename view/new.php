<?php include "partials/header.php"; ?>

<section class="user-profile section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- Edit Profile Welcome Text -->
				<div class="widget welcome-message">
					<h2>Create an invitation</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>

					<form action="#">
						<!-- First Name -->
						<div class="form-group">
							<label for="first-name">First Name</label>
							<input type="text" class="form-control" id="first-name">
						</div>

						<!-- Last Name -->
						<div class="form-group">
							<label for="last-name">Last Name</label>
							<input type="text" class="form-control" id="last-name">
						</div>

						<!-- File chooser -->
						<div class="form-group">
							<label for="input-file">Upload invitation image</label>
							<input type="file" class="form-control-file mt-2 pt-1" id="input-file">
						</div>

						<!-- Comunity Name -->
						<div class="form-group">
							<label for="comunity-name">Comunity Name</label>
							<textarea type="text" class="form-control" id="comunity-name"></textarea>
						</div>

						<!-- Zip Code -->
						<div class="form-group">
							<label for="zip-code">Zip Code</label>
							<input type="text" class="form-control" id="zip-code">
						</div>

						<!-- Zip Code -->
						<div class="form-group">
							<label for="category-one">Category One</label>
							<select name="cat1" id="category-one" class="form-control w-100">
								<option value="1">Select Category</option>
								<option value="1">Laptop</option>
								<option value="1">iPhone</option>
								<option value="1">Monitor</option>
								<option value="1">I need</option>
							</select>
						</div>

						<br>

						<!-- Submit button -->
						<div class="form-group">
							<button class="btn btn-transparent">Save My Changes</button>
							<a href="#" class="btn btn-default">Go back</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>

<?php include "partials/footer.php"; ?>