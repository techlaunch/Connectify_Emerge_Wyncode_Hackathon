<?php include "partials/header.php"; ?>

<section class="blog single-blog section">
	<div class="container">
		<div class="row">
			<div class="col-md-10 offset-md-1 col-lg-9 offset-lg-0">
				<article class="single-post">
					<h3>By <?= $invitation->Name ?></h3>
					<ul class="list-inline">
						<li class="list-inline-item"><?= date("F j, Y", strtotime($invitation->DateTime)) ?></li>
					</ul>
					<img src="res/images/product/<?= $invitation->PictureName ?>" alt="article-01">
					<p><?= $invitation->Description ?></p>
				</article>
				<div class="block comment">
					<h4>Connect with <?= explode(" ", $invitation->Name)[0] ?></h4>
					<form action="#">
						<!-- Message -->
						<div class="form-group mb-30">
							<label for="message">Message</label>
							<textarea class="form-control" id="message" rows="8"></textarea>
						</div>
						<button class="btn btn-transparent">Leave Comment</button>
					</form>
				</div>
			</div>
			<div class="col-md-10 offset-md-1 col-lg-3 offset-lg-0">
				<div class="sidebar">
					<!-- Category Widget -->
					<div class="widget category">
						<!-- Widget Header -->
						<h5 class="widget-header">Top Categories</h5>
						<ul class="category-list">
							<?php foreach ($categories as $cat) { ?>
								<li>
									<a href="index.php?page=invitations&cat=<?= $cat->category ?>"><?= substr($cat->category, 0, 15) ?> <span class="float-right">(<?= $cat->used ?>)</span></a>
								</li>
							<?php } ?>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<?php include "partials/footer.php"; ?>