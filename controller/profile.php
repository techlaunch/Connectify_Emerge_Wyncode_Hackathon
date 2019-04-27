<?php

class Profile
{
	public function index() {
		// get category
		$id = isset($_GET['id']) ? $_GET['id'] : '1';

		// call the model functions
		$generalModel = new General();
		$person = $generalModel->getPersonByID($id);

		// include the view
		$title = "Profile";
		include "view/profile.php";
	}
}
