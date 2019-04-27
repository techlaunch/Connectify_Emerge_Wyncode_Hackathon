<?php

// include classes
include_once "model/general.php";

class Categories 
{
	public function index() {
		// include the model
		$generalModel = new General();

		// get all categories
		$categories = $generalModel->getCategoriesByInitialLetter();

		// include the view
		$title = "Categories";
		include "view/categories.php";
	}
}
