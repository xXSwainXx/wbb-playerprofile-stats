<?php

namespace wcf\system\menu\user\profile\content;

use wcf\system\cache\runtime\UserRuntimeCache;
use wcf\system\SingletonFactory;
use wcf\system\WCF;
use wcf\system\STATS;


class StatsUserProfileMenuContent extends SingletonFactory implements IUserProfileMenuContent
{
    /**
     * @inheritDoc
     */


    public function getContent($userID)
    {
        // UserData
        $user = UserRuntimeCache::getInstance()->getObject($userID);
        $username = $user->username;
        $mcname = $user->mcName;
        $uuid = $user->uuid;
        $status = STATS::isOnline($uuid);
        $rang = STATS::getRank($uuid);
        // Game: BedWars
        $bwstats = STATS::getBWStats($uuid);
        // Game: KBFFA
        $knockstats = STATS::getKFFAStats($uuid);
        // Game: BFFA
        $bffa = STATS::getBFFAStats($uuid);
        // Game: Bridge (rounds_won, rounds_played, placed_blocks)
        $statsb = STATS::getBridgeStats($uuid);
        $bridge_p_b = $statsb["placed_blocks"];
        $bridge_wins = $statsb["rounds_won"];
        $bridge_r_p = $statsb["rounds_played"];
        // Game: Clutches (broken_blocks, placed_blocks)
        $statsc = STATS::getClutchesStats($uuid);
        $c_b = $statsc["broken_blocks"];
        $c_p = $statsc["placed_blocks"];

        WCF::getTPL()->assign([
            'user' => $user,
            'username' => $username,
            'mcname' => $mcname,
            'uuid' => $uuid,
            'status' => $status,
            'rang' => $rang,
            'bwstats' => $bwstats,
            'kffastats' => $knockstats,
            'bffa' => $bffa,
            'bridge_p_b' => $bridge_p_b,
            'bridge_wins' => $bridge_wins,
            'bridge_r_p' => $bridge_r_p,
            'c_b' => $c_b,
            'c_p' => $c_p,
        ]);

        return WCF::getTPL()->fetch('statsProfile');
    }

    /**
     * @inheritDoc
     */
    public function isVisible($userID)
    {
        return true;
    }
}
