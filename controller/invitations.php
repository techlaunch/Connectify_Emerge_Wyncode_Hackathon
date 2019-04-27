<?php

// include classes
include_once "model/general.php";

class Invitations 
{
	public function index() {
		// include the model
		$generalModel = new General();

		// get top categories
		$categories = $generalModel->getTopCategories();

		// include the view
		$title = "Contest";
		include "view/invitations.php";
	}

	public function new() {
		// include the view
		$title = "New invitation";
		include "view/new.php";
	}

	public function submit() {
		// get params from the view
		$name = $_POST['name'];
		$age = $_POST['age'];
		$accuracy = $_POST['accuracy'];

		// create new Player
		$player = new Player($name, $age, 0, $accuracy);

		// save the player
		$userModel = new Users();
		$userModel->addHeatPlayer($player);

		// redirect to the list of players
		header('Location: index.php?page=invitations');
	}
}
