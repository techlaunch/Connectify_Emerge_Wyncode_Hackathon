<?php include "partials/header.php"; ?>

<section class="section-sm">
	<div class="container">
		<?php if($category != "%") { ?>
		<div class="row">
			<div class="col-md-12">
				<div class="search-result bg-gray">
					<h2>Results For "<?= $category ?>"</h2>
					<p><?= count($invitations) ?> Results</p>
				</div>
			</div>
		</div>
		<?php } ?>

		<div class="row">
			<div class="col-lg-3 col-md-4">
				<div class="category-sidebar">
					<div class="widget category-list">
						<h4 class="widget-header">All Categories</h4>
						<ul class="category-list">
							<?php foreach ($categories as $cat) { ?>
								<li>
									<a href="index.php?page=invitations&cat=<?= $cat->category ?>">
										<?= substr($cat->category, 0, 15) ?> <span><?= $cat->used ?></span>
									</a>
								</li>
							<?php } ?>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-9 col-md-8">
				<?php foreach($invitations as $inv) { ?>
					<div class="ad-listing-list mt-20">
						<div class="row p-lg-3 p-sm-5 p-4">
							<div class="col-lg-4 align-self-center">
								<a href="index.php?page=connect&id=<?= $inv->ID ?>">
									<img src="res/images/products/<?= $inv->PictureName ?>" class="img-fluid" alt="">
								</a>
							</div>
							<div class="col-lg-8">
								<div class="row">
									<div class="col-lg-12 col-md-10">
										<a style="float:right;" href="index.php?page=connect&id=<?= $inv->ID ?>"><i class="fa fa-eye"></i></a>
				
										<div class="ad-listing-content">
											<ul class="list-inline mt-2 mb-3">
												<li class="list-inline-item">
													<a href="index.php?page=invitations&cat=<?= $inv->Category1 ?>">#<?= $inv->Category1 ?></a> &nbsp;&nbsp;
													<a href="index.php?page=invitations&cat=<?= $inv->Category2 ?>">#<?= $inv->Category2 ?></a> &nbsp;&nbsp;
													<a href="index.php?page=invitations&cat=<?= $inv->Category3 ?>">#<?= $inv->Category3 ?></a>
												</li>
												<li>
													<i class="fa fa-calendar"></i> <?= date("F j, Y", strtotime($inv->DateTime)) ?>
													<br>
													<i class="fa fa-map"></i> <?= $inv->EventAddress ?>
													<br>
													<a href="index.php?page=profile&id=<?= $inv->PersonID ?>">
														<i class="fa fa-user"></i> <?= $inv->Name ?>
													</a>
												</li>
											</ul>
											<p class="pr-5"><?= substr($inv->Description, 0, 100) . "..." ?></p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				<?php } ?>
			</div>
		</div>
	</div>
</section>

<?php include "partials/footer.php"; ?>