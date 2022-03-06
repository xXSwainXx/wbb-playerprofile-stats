<?php

namespace wcf\system;

use wcf\system\WCF;
use wcf\system\database\StatsExternalDatabase;

class Stats
{

    function isOnline($uuid)
    {
        $curl = curl_init();
    
        curl_setopt_array($curl, array(
            CURLOPT_URL => 'http://venezia.xxswainxx.dev:12345/getOnline/?uuid='. $uuid .'',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 3,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'GET',
        ));
    
        $response = curl_exec($curl);
        curl_close($curl);
        $isOnline = json_decode($response);
    
        if ($isOnline->body == "true") {
            return true;
        } else {
            return false;
        }
    }

    function getRank($uuid)
    {
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'http://venezia.xxswainxx.dev:12345/user/?uuid='. $uuid .'',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 3,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'GET',
            CURLOPT_HTTPHEADER => array(
                'API-KEY: API-KEY-12345'
            ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);


        $data_array = json_decode($response, true);
        $data = $data_array['body']['groups']['0']['name'];

        return $data;
    }

    function getBWStats($uuid)
    {
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'http://venezia.xxswainxx.dev:12345/stats/'. $uuid .'?gameMode=bedwars',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 3,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'GET',
        ));

        $response = curl_exec($curl);

        $getStats = json_decode($response);

        curl_close($curl);
        return $getStats->body->stats;

    }


    // DATABASE STATS
    // Extern Databese Settings in file StatsExternalDatabase.class.php
    function getBridgeStats($uuid)
    {
        $sql = "SELECT * FROM game WHERE uuid = ?";
        $statement = StatsExternalDatabase::getDatabaseGame()->prepareStatement($sql);
        $statement->execute([$uuid]);

        return $statement->fetchMap('type', 'count');
    }


}
