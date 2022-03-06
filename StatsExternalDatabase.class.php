<?php

namespace wcf\system\database;
use wcf\system\database\MySQLDatabase;

class StatsExternalDatabase {

	protected static $getDatabaseBridge;
	protected static $getDatabaseClutches;
	/**
	 * @return MySQLDatabase
	 */
	public static function getDatabaseGame() {
    
		if(!isset(self::$getDatabaseGame)) {
			self::$getDatabaseGame = new MySQLDatabase("Server1", "root", "pw", "game1", "3306");
		}
		return self::$getDatabaseGame;
	}

	public static function getDatabaseGame2() {
    
		if(!isset(self::$getDatabaseGame2)) {
			self::$getDatabaseGame2 = new MySQLDatabase("Server2", "root", "pw", "game2", "3306");
		}
		return self::$getDatabaseGame2;
	}

}
