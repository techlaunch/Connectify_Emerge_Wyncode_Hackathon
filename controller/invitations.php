<?php

// include classes
include_once "model/general.php";

class Invitations
{
	public function index() {
		// get category
		$category = isset($_GET['cat']) ? $_GET['cat'] : '%';

		// call the model functions
		$generalModel = new General();
		$categories = $generalModel->getTopCategories();
		$invitations = $generalModel->getInvitationByCategory($category);

		// include the view
		$title = "Invitations";
		include "view/invitations.php";
	}

	public function new() {
		// call the model functions
		$generalModel = new General();
		$categories = $generalModel->getTopCategories(100000);

		// include the view
		$title = "New invitation";
		include "view/new.php";
	}

	public function submit() {
		// get params from the view
		$name = $_POST['name'];
		$picture = $_POST['picture'];
		$desc = $_POST['desc'];
		$zip = $_POST['zip'];
		$date = $_POST['date'];
		$cat1 = $_POST['cat1'];
		$cat2 = $_POST['cat2'];
		$cat3 = $_POST['cat3'];

		// redirect to the list of players
		header('Location: index.php?page=invitations');
	}
}
