<?php

// include classes
include_once "model/general.php";

class Connect 
{
	public function index() {
		// get category
		$id = $_GET['id'];

		// call the model functions
		$generalModel = new General();
		$invitation = $generalModel->getInvitationById($id);
		$categories = $generalModel->getTopCategories();

		// include the view
		$title = "Connect";
		include "view/connect.php";
	}
}
