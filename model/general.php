<?php 

//include_once "classes/Player.php";

class General
{
	/**
	 * Get the top categories
	 */
	public function getTopCategories($limit=10) {
		global $db;
		$categories = $db->query("SELECT category, used FROM categories ORDER BY used DESC LIMIT $limit");
		return $categories;
	}

	/**
	 * Get the categories by initial letter
	 */
	public function getCategoriesByInitialLetter() {
		global $db;
		$res = $db->query("SELECT category, used FROM `categories` ORDER BY category");

		$initials = [];
		foreach ($res as $r) {
			$firstChar = mb_substr($r->category, 0, 1);
			if(is_numeric($firstChar)) $firstChar = "#";
			$initials[$firstChar][] = [$r->category, $r->used];
		}

		return $initials;
	}

	/**
	 * Search for invitations based on a category
	 */
	public function getInvitationByCategory($category) {
		global $db;

		$invitations = $db->query("
			SELECT A.*, B.Name 
			FROM invites A
			JOIN person B
			ON A.PersonID = B.id
			WHERE A.Category1 LIKE '$category' 
			OR A.Category2 LIKE '$category' 
			OR A.Category3 LIKE '$category'
			LIMIT 10");
		return $invitations;
	}

	/**
	 * Get a person based on the id
	 */
	public function getPersonByID($id) {
		global $db;

		$person = $db->query("SELECT * FROM person WHERE id=$id");
		return $person[0];
	}

	/**
	 * Search for invitations based on a user
	 */
	public function getInvitationsByUserId($id) {
		global $db;

		$invitations = $db->query("SELECT * FROM invites WHERE PersonID = $id");
		return $invitations;
	}

	/**
	 * Search for invitations by Id
	 */
	public function getInvitationById($id) {
		global $db;

		$invitations = $db->query("
			SELECT A.*, B.Name 
			FROM invites A
			JOIN person B
			ON A.PersonID = B.id
			WHERE A.id = $id");

		return $invitations[0];
	}

	/**
	 * Search for invitations based on a user
	 */
	public function getConnectById($id) {
		global $db;

		$invitations = $db->query("SELECT * FROM invites WHERE PersonID = $id");
		return $invitations;
	}


	// /**
	//  * Get the list of Heat players
	//  */
	// public function getHeatPlayers() {
	//     global $db;
	//     $res = $db->query("SELECT name, age, speed, accuracy FROM players");

	//     // translating from generic object to a Player object
	//     $players = [];
	//     foreach($res as $r) {
	//         $players[] = new Player($r->name, $r->age, $r->speed, $r->accuracy);
	//     }

	//     return $players;
	// }

	// /**
	//  * Save a new Heat player
	//  */
	// public function addHeatPlayer($player) {
	//     global $db;
	//     $db->query("
	//         INSERT INTO players (`name`, `age`, `speed`, `accuracy`) 
	//         VALUES ('{$player->name}', {$player->age}, {$player->speed}, {$player->accuracy})");
	// }
}
