<?php include "partials/header.php"; ?>

<section class="dashboard section">
	<!-- Container Start -->
	<div class="container">
		<!-- Row Start -->
		<div class="row">
			<div class="col-md-10 offset-md-1 col-lg-4 offset-lg-0">
				<div class="sidebar">
					<!-- User Widget -->
					<div class="widget user-dashboard-profile">
						<!-- User Image -->
						<div class="profile-thumb">
							<img src="res/images/user/<?= $person->PictureName ?>" alt="" class="rounded-circle">
						</div>

						<!-- User Name -->
						<h5 class="text-center"><?= $person->Name ?></h5>
						<p><?= date("Y") - date("Y", strtotime($person->DateofBirth)) ?> years old</p>
						<a href="#" class="btn btn-main-sm">Edit Profile</a>
					</div>

					<!-- Dashboard Links -->
					<div class="widget user-dashboard-menu">
						<p><?= $person->Description ?></p>
					</div>
				</div>
			</div>
			<div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0">
				<!-- Recently Favorited -->
				<div class="widget dashboard-container my-invitations">
					<h2 class="widget-header" style="border-bottom:0px; margin:0px;">My invitations</h2>
					<table class="table table-responsive product-dashboard-table">
						<tbody>
							<?php foreach($invitations as $inv) { ?>
								<tr>
									<td class="product-thumb">
										<img width="80px" height="auto" src="res/images/products/<?= $inv->PictureName ?>" alt="image description">
									</td>
									<td class="product-details">
										<li class="list-inline-item">
											<a href="index.php?page=invitations&cat=<?= $inv->Category1 ?>">#<?= $inv->Category1 ?></a> &nbsp;&nbsp;
											<a href="index.php?page=invitations&cat=<?= $inv->Category2 ?>">#<?= $inv->Category2 ?></a> &nbsp;&nbsp;
											<a href="index.php?page=invitations&cat=<?= $inv->Category3 ?>">#<?= $inv->Category3 ?></a>
										</li>										
										<p class="pr-5"><?= substr($inv->Description, 0, 100) . "..." ?></p>
									</td>
									<td class="action" data-title="Action">
										<ul class="list-inline justify-content-center">
											<li class="list-inline-item">
												<a data-toggle="tooltip" data-placement="top" title="View" class="view" href="index.php?page=connect&id=<?= $inv->ID ?>">
													<i class="fa fa-eye"></i>
												</a>
											</li>
										</ul>
									</td>
								</tr>
							<?php } ?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- Row End -->
	</div>
	<!-- Container End -->
</section>

<?php include "partials/footer.php"; ?>