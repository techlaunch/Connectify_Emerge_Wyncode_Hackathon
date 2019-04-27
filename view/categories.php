<?php include "partials/header.php"; ?>

<section class="stores section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-title">
					<h2>All Categories</h2>
				</div>

				<?php foreach ($categories as $key => $val) { ?>
					<div class="block">
						<!-- First Letter -->
						<h5 class="store-letter"><?= $key ?></h5>
						<hr>

						<!-- Lists -->
						<div class="row">
							<?php foreach ($val as $cat) { ?>
							<div class="col-md-3 col-sm-6">
								<ul class="store-list">
									<li><a href="index.php?page=invitations&cat=<?= $cat[0] ?>"><?= $cat[0] ?></a></li>
								</ul>	
							</div>
							<?php } ?>
						</div>
					</div>
				<?php } ?>
			</div>
		</div>
	</div>
</section>

<?php include "partials/footer.php"; ?>