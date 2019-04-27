<?php include "partials/header.php"; ?>

<section class="user-profile section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- Edit Profile Welcome Text -->
				<div class="widget welcome-message">
					<h2>Create an invitation</h2>
					<p>Please create an invitation to be able to meet some neew friends</p>

					<form action="#">
						<!-- First Name -->
						<div class="form-group">
							<label for="first-name">First Name</label>
							<input type="text" class="form-control" id="first-name" placeholder="John">
						</div>

						<!-- Last Name -->
						<div class="form-group">
							<label for="last-name">Last Name</label>
							<input type="text" class="form-control" id="last-name" placeholder="Doe">
						</div>

						<!-- File chooser -->
						<div class="form-group">
							<label for="input-file">Upload invitation image</label>
							<input type="file" class="form-control-file mt-2 pt-1" id="input-file">
						</div>

						<!-- Invitation Desc -->
						<div class="form-group">
							<label for="comunity-name">Describe your invitation</label>
							<textarea type="text" class="form-control" id="comunity-name"></textarea>
						</div>

						<!-- Zip Code -->
						<div class="form-group">
							<label for="zip-code">Zip Code</label>
							<input type="text" class="form-control" id="zip-code">
						</div>
						<!-- date and time -->
						<div class="form-group">
							<label for="date">Date of invitation</label>
							<input type="date" class="form-control" id="date">
						</div>

						<!-- Cat 1 -->
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

						<!-- Cat 2 -->
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

						<!-- Cat 3 -->
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