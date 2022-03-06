<style>

/*
 * Copyright (c) 2022 David Katalinic - All Rights Reserved.
 */

.noStats {
    padding: 0;
    margin-top: 20px;
    position: relative;
    padding: 10px 10px 10px 88px;
    border-radius: 4px;
    box-shadow: 0 0.125rem 0.25rem rgb(0 0 0 / 8%);
    border: 2px solid red;
    width: 100%;
	color: #fff;
    background: rgba(42, 48, 55, 0.95) !important;
}

.noStats:before {
    font-size: 28px;
    width: 58px;
    min-height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-right: 20px;
    font-family: 'FontAwesome' !important;
    position: absolute;
    top: 0;
    left: 0;
    color: #fff;
    background-color: red;
    content: "\f00d";
}

.notPlayed {
    padding: 0;
    margin-top: 20px;
    position: relative;
    padding: 10px 10px 10px 88px;
    border-radius: 4px;
    box-shadow: 0 0.125rem 0.25rem rgb(0 0 0 / 8%);
    border: 2px solid red;
    width: 100%;
	color: #fff;
    background: rgba(42, 48, 55, 0.95) !important;
}

.notPlayed:before {
    font-size: 28px;
    width: 58px;
    min-height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-right: 20px;
    font-family: 'FontAwesome' !important;
    position: absolute;
    top: 0;
    left: 0;
    color: #fff;
    background-color: red;
    content: "\f00d";
}

#header {
    width: 100%;
}


/*
 * playerStatsTemplate.php
 */

.display-player {
    display: flex;
    margin: 50px auto;
    height: 250px;
    background: linear-gradient(0deg, #000000 0%, rgba(0,0,0,0) 5%, #141515 100%), url(https://forum.introuble.de/home/profileStats/img/bg_lobby.jpg) no-repeat center center fixed;
    background-size: cover;
    color: white;
}

.display-skin {
    overflow: hidden;
}

.display-skin img {
    float: left;
    margin: 15px 0 0 40px;
}

@media screen and (max-width: 768px) {
    .display-skin img {
        width: 75%;
    }
}

.player-info {
    float: left;
    margin-top: 15px;
    padding: 35px;
    text-shadow: 0 0 8px rgba(0, 0, 0, .5);
}

.player-rank {
    text-shadow: none;
    padding: 4px 9px;
    border-radius: 15px;
    font-size: 1.0rem;
}

.player-info h3 {
    font-size: 1.8rem;
    margin: 10px 0;
    font-weight: normal;
}

.player-online-status .circle {
    float: left;
    margin: 3px 5px;
    border-radius: 50%;
    width: 10px;
    height: 10px;
    position: absolute;
    opacity: 0;
    animation: scaleIn 3s infinite cubic-bezier(.36, .11, .89, .32);
    -webkit-animation: scaleIn 3s infinite cubic-bezier(.36, .11, .89, .32);
}

.player-online-status > .online {
    background-color: limegreen;
}

.player-online-status > .offline {
    background-color: red;
}

@keyframes scaleIn {
    from {
        transform: scale(.5, .5);
        opacity: .7;
    }
    to {
        transform: scale(2.5, 2.5);
        opacity: 0;
    }
}


@-webkit-keyframes scaleIn {
    from {
        transform: scale(.5, .5);
        opacity: .7;
    }
    to {
        transform: scale(2.5, 2.5);
        opacity: 0;
    }
}

.player-online-status p {
    float: left;
    margin-left: 24px;
    font-size: 1rem;
}

.Administrator {
    background-color: #AA0000;
    color: rgba(255, 255, 255, 1);
}

.Moderator {
    background-color: #FF5555;
    color: rgba(255, 255, 255, 1);
}

.Senior-Moderator {
    background-color: #FF5555;
    color: rgba(255, 255, 255, 1);
}

.Test-Moderator {
    background-color: #FF5555;
    color: rgba(255, 255, 255, 1);
}

.Test-Supporter {
    background-color: #FF5555;
    color: rgba(255, 255, 255, 1);
}

.Supporter {
    background-color: #FF5555;
    color: rgba(255, 255, 255, 1);
}

.Developer {
	background-color: rgb(153,164,230);
	color: rgba(255, 255, 255, 1);
}

.Senior-Developer {
	background-color: rgb(153,164,230);
	color: rgba(255, 255, 255, 1);
}

.Content {
	background-color: #55FFFF;
	color: #000000;
}

.Builder {
	background-color: #00AA00;
	color: rgba(255, 255, 255, 1);
}

.Senior-Builder {
	background-color: #00AA00;
	color: rgba(255, 255, 255, 1);
}

.Designer {
	background-color: rgb(153,164,230);
	color: rgba(255, 255, 255, 1);
}

.Premium {
	background-color: #FFAA00;
	color: rgba(255, 255, 255, 1);
}

.Premium+ {
	background-color: #FFFF55;
	color: #000000;
}

.YouTuber {
	background-color: #AA00AA;
	color: rgba(255, 255, 255, 1);
}

.Troubler {
	background-color: #00AAAA;
	color: rgba(255, 255, 255, 1);
}

.Troubler+ {
	background-color: #00AAAA;
	color: rgba(255, 255, 255, 1);
}

.Champ {
	background-color: #00AAAA;
	color: rgba(255, 255, 255, 1);
}

.VIP {
	background-color: #FF55FF;
	color: rgba(255, 255, 255, 1);
}

.Spieler {
    background-color: rgba(180, 180, 180 , 1);
    color: rgba(255, 255, 255, 1);
}

/* Game-Modes Listing */

.game {
    width: 100%;
    overflow: hidden;
    float: left;
    padding: 20px 0;
}

.mario:hover {
	  border-top-left-radius: 10px;
	  border-bottom-left-radius: 10px;
      border-top-right-radius: 10px;
	  border-bottom-right-radius: 10px;
	  animation-name: example;
	  animation-duration: 0.10s;
      border-left: 3px solid #fdad00;
	  border-right: 3px solid #fdad00;
	  box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
      padding: 0px 0 !important;
}


.list-games {
    margin: 0 -10px;
    border-spacing: 10px;
    border-collapse: separate;
}

.list-games td {
    width: 33%;
    vertical-align: top;
}

@media screen and (max-width: 768px) {
    .list-games td {
        width: 100%;
        display: block;
    }
}

.game ul li p, .game ul li span {
    width: auto;
    float: left;
}

/* vietnamese */
@font-face {
  font-family: 'Bungee';
  font-style: normal;
  font-weight: 400;
  src: url(https://fonts.gstatic.com/s/bungee/v6/N0bU2SZBIuF2PU_0AnR1Gd8.woff2) format('woff2');
  unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+1EA0-1EF9, U+20AB;
}
/* latin-ext */
@font-face {
  font-family: 'Bungee';
  font-style: normal;
  font-weight: 400;
  src: url(https://fonts.gstatic.com/s/bungee/v6/N0bU2SZBIuF2PU_0A3R1Gd8.woff2) format('woff2');
  unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
  font-family: 'Bungee';
  font-style: normal;
  font-weight: 400;
  src: url(https://fonts.gstatic.com/s/bungee/v6/N0bU2SZBIuF2PU_0DXR1.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}

.game h3 {
    font-family: 'Bungee';
    font-weight: 900;
    width: 100%;
    height: 56px;
    line-height: 56px;
    background: #393939;
    font-size: 50px;
    color: #fff;
    text-align: center;
    text-shadow: 0 1px 1px rgba(0, 0, 0, .6);
    float: left;
    color: #2f3439;
}

.animationstext:hover {
    transform: translate(-50%,-50%)
    background: linear-gradient(to right, #4d4d4d 0, white 10%, #4d4d4d 20%)
    background-position: 0
    -webkit-background-clip: text
    -webkit-text-fill-color: transparent
    animation: shine 3s infinite linear
    animation-fill-mode: forwards
    -webkit-text-size-adjust: none
    text-decoration: none
    white-space: nowrap
    
@keyframes shine
  0%
    background-position: 0
  60%
    background-position: 180px
  100%
    background-position: 180px
}

.game .image {
    width: 100%;
    float: left;
}

.game img {
    width: 100%;
}

.game ul {
    width: 100%;
    float: left;
}

.game ul li {
    width: 100%;
    height: 50px;
    line-height: 50px;
    background: #2f3439;
    float: left;
    font-size: 1rem;
    border-bottom: 1px solid rgba(0, 0, 0, .1);
}

.game ul li p {
    margin: 0 0 0 20px;
}

.game ul li p i {
    margin-right: 10px;
    font-size: 1rem;
}

.game ul li span {
    margin: 0 20px 0 0;
    font-size: 19px;
    color: #989797;
    letter-spacing: -1px;
    float: right;
}

.game .image {
    width: 100%;
    height: 160px;
}

.game .image img {
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
}

/* Game-Mode Colors */

.game h3.null {
    background: #000000;
    border-bottom: 5px solid #1f2225;
}

.game h3.eins {
    background: #0000AA;
    border-bottom: 5px solid #1f2225;
}

.game h3.zwei {
    background: #00AA00;
    border-bottom: 5px solid #1f2225;
}

.game h3.drei {
    background: #00AAAA;
    border-bottom: 5px solid #1f2225;
}

.game h3.vier {
    background: #AA0000;
    border-bottom: 5px solid #1f2225;
}

.game h3.fuenf {
    background: #8400FF;
    border-bottom: 5px solid #1f2225;
}

.game h3.sechs {
    background: #FFAA00;
    border-bottom: 5px solid #1f2225;
}

.game h3.sieben {
    background: #AAAAAA;
    border-bottom: 5px solid #1f2225;
}

.game h3.acht {
    background: #555555;
    border-bottom: 5px solid #1f2225;
}

.game h3.neun {
    background: #5555FF;
    border-bottom: 5px solid #1f2225;
}

.game h3.a {
    background: #55FF55;
    border-bottom: 5px solid #1f2225;
}

.game h3.b {
    background: #55FFFF;
    border-bottom: 5px solid #1f2225;
}

.game h3.c {
    background: #FF5555;
    border-bottom: 5px solid #1f2225;
}

.game h3.d {
    background: #FF55FF;
    border-bottom: 5px solid #1f2225;
}

.game h3.e {
    background: #FFFF55;
    border-bottom: 5px solid #1f2225;
}

.game h3.f {
    background: #FFFFFF;
    border-bottom: 5px solid #1f2225;
}

</style>

<link href="https://forum.introuble.de/home/profileStats/fontawesome/css/all.css" rel="stylesheet">

{if $uuid}

<main>
        <div class="content">
            <div class="display-player">
                <div class="display-skin">
                    <img src="https://visage.surgeplay.com/full/350/{$uuid}" alt="swain">
                </div>

                <div class="player-info">
                    <span class="player-rank {$rang}">{$rang}</span>
                    <h3>{$mcname}</h3>

                    {if $status === true}
                    <div class="player-online-status online">
                        <span class="circle online"></span>
                        <span class="circle online" style="animation-delay: 2s"></span>
                        <span class="circle online" style="animation-delay: 4s"></span>
                        <p>Online</p>
                    </div>
                    {elseif $status === false}
                    <div class="player-online-status offline">
                        <span class="circle offline"></span>
                        <p>Offline</p>
                    </div>
                    {/if}
                </div>
            </div>

            <table class="list-games">
                <tr>
                    <td>
                        <div class="game">
                            <h3 class="animationstext sechs">BedWars</h3>
                            <!--<div class="image">
                                <img src="profileStats/img/bed.jpg" alt="bed">
                            </div>-->
                            <ul>
                                <li>
                                    <p><i class="fas fa-star"></i>{lang}wcf.user.profile.menu.stats.punkte{/lang}</p>
                                    <span>{if $bwstats->bw_points|isset}{$bwstats->bw_points}{else}0{/if}</span>
                                </li>
                                <!--<li>
                                    <p><i class="fas fa-star"></i>{lang}wcf.user.profile.menu.stats.stufe{/lang}</p>
                                    <span>-</span>
                                </li>-->
                                <li>
                                    <p><i class="fas fa-bullseye"></i>{lang}wcf.user.profile.menu.stats.kills{/lang}</p>
                                    <span>{if $bwstats->bw_kills|isset}{$bwstats->bw_kills}{else}0{/if}</span>
                                </li>
                                <li>
                                    <p><i class="fas fa-skull-crossbones"></i>{lang}wcf.user.profile.menu.stats.deaths{/lang}</p>
                                    <span>{if $bwstats->bw_deaths|isset}{$bwstats->bw_deaths}{else}0{/if}</span>
                                </li>
                                <li>
                                    <p><i class="fas fa-skull-crossbones"></i>{lang}wcf.user.profile.menu.stats.finalekills{/lang}</p>
                                    <span>{if $bwstats->bw_final_kills|isset}{$bwstats->bw_final_kills}{else}0{/if}</span>
                                </li>
                                <li>
                                    <p><i class="fas fa-award"></i>{lang}wcf.user.profile.menu.stats.wins{/lang}</p>
                                    <span>{if $bwstats->bw_wins|isset}{$bwstats->bw_wins}{else}0{/if}</span>
                                </li>
                                <li>
                                    <p><i class="fas fa-play"></i>{lang}wcf.user.profile.menu.stats.gespielt{/lang}</p>
                                    <span>{if $bwstats->bw_played_games|isset}{$bwstats->bw_played_games}{else}0{/if}</span>
                                </li>
                                <li>
                                    <p><i class="fas fa-bed"></i>{lang}wcf.user.profile.menu.stats.betten{/lang}</p>
                                    <span>{if $bwstats->bw_destroyed_beds|isset}{$bwstats->bw_destroyed_beds}{else}0{/if}</span>
                                </li>
                                <li>
                                    <p><i class="fas fa-cube"></i>{lang}wcf.user.profile.menu.stats.zerstoerte.bloecke{/lang}</p>
                                    <span>{if $bwstats->bw_destroyed_blocks|isset}{$bwstats->bw_destroyed_blocks}{else}0{/if}</span>
                                </li>
                                <li>
                                    <p><i class="fas fa-cubes"></i>{lang}wcf.user.profile.menu.stats.plazierteb.loecke{/lang}</p>
                                    <span>{if $bwstats->bw_blocks_placed|isset}{$bwstats->bw_blocks_placed}{else}0{/if}</span>
                                </li>
                            </ul>
                        </div>
                    </td>

                    <td>
                        <div class="game">
                            <h3 class="sechs">KnockFFA</h3>
                            <!--<div class="image">
                                <img src="profileStats/img/bed.jpg" alt="bed">
                            </div>-->
                            <ul>
                                <li>
                                    <p><i class="fas fa-star"></i>{lang}wcf.user.profile.menu.stats.punkte{/lang}</p>
                                    <span>{if $kffastats->kbffa_points|isset}{$kffastats->kbffa_points}{else}0{/if}</span>
                                </li>
                                <li>
                                    <p><i class="fas fa-bullseye"></i>{lang}wcf.user.profile.menu.stats.kills{/lang}</p>
                                    <span>{if $kffastats->kbffa_kills|isset}{$kffastats->kbffa_kills}{else}0{/if}</span>
                                </li>
                                <li>
                                    <p><i class="fas fa-skull-crossbones"></i>{lang}wcf.user.profile.menu.stats.deaths{/lang}</p>
                                    <span>{if $kffastats->kbffa_deaths|isset}{$kffastats->kbffa_deaths}{else}0{/if}</span>
                                </li>
                                <li>
                                    <p><i class="fas fa-cubes"></i>{lang}wcf.user.profile.menu.stats.plazierteb.loecke{/lang}</p>
                                    <span>{if $kffastats->kbffa_blocks_placed|isset}{$kffastats->kbffa_blocks_placed}{else}0{/if}</span>
                                </li>
                            </ul>
                        </div>
                    </td>

                    <td>
                        <div class="game">
                            <h3 class="sechs">BuildFFA</h3>
                            <!--<div class="image">
                                <img src="profileStats/img/bed.jpg" alt="bed">
                            </div>-->
                            <ul>
                                <li>
                                    <p><i class="fas fa-star"></i>{lang}wcf.user.profile.menu.stats.punkte{/lang}</p>
                                    <span>{if $bffa->bffa_points|isset}{$bffa->bffa_points}{else}0{/if}</span>
                                </li>
                                <li>
                                    <p><i class="fas fa-bullseye"></i>{lang}wcf.user.profile.menu.stats.kills{/lang}</p>
                                    <span>{if $bffa->bffa_kills|isset}{$bffa->bffa_kills}{else}0{/if}</span>
                                </li>
                                <li>
                                    <p><i class="fas fa-skull-crossbones"></i>{lang}wcf.user.profile.menu.stats.deaths{/lang}</p>
                                    <span>{if $bffa->bffa_deaths|isset}{$bffa->bffa_deaths}{else}0{/if}</span>
                                </li>
                                <li>
                                    <p><i class="fas fa-cubes"></i>{lang}wcf.user.profile.menu.stats.plazierteb.loecke{/lang}</p>
                                    <span>{if $bffa->bffa_blocks_placed|isset}{$bffa->bffa_blocks_placed}{else}0{/if}</span>
                                </li>
                            </ul>
                        </div>
                    </td>
                </tr>

                <tr>
                    <td>
                        <div class="game">
                            <h3 class="e">Clutches</h3>
                            <!--<div class="image">
                                <img src="profileStats/img/bed.jpg" alt="bed">
                            </div>-->
                            <ul>
                                <li>
                                    <p><i class="fas fa-cube"></i>{lang}wcf.user.profile.menu.stats.zerstoerte.bloecke{/lang}</p>
                                    <span>{if $c_b|isset}{$c_b}{else}0{/if}</span>
                                </li>
                                <li>
                                    <p><i class="fas fa-cubes"></i>{lang}wcf.user.profile.menu.stats.plazierteb.loecke{/lang}</p>
                                    <span>{if $c_p|isset}{$c_p}{else}0{/if}</span>
                                </li>
                            </ul>
                        </div>
                    </td>

                    <td>
                        <div class="game">
                            <h3 class="c">Bridge</h3>
                            <!--<div class="image">
                                <img src="profileStats/img/bed.jpg" alt="bed">
                            </div>-->
                            <ul>
                                <li>
                                    <p><i class="fas fa-award"></i>{lang}wcf.user.profile.menu.stats.wins{/lang}</p>
                                    <span>{if $bridge_wins|isset}{$bridge_wins}{else}0{/if}</span>
                                </li>
                                <li>
                                    <p><i class="fas fa-play"></i>{lang}wcf.user.profile.menu.stats.gespielt{/lang}</p>
                                    <span>{if $bridge_r_p|isset}{$bridge_r_p}{else}0{/if}</span>
                                </li>
                                <li>
                                    <p><i class="fas fa-cubes"></i>{lang}wcf.user.profile.menu.stats.plazierteb.loecke{/lang}</p>
                                    <span>{if $bridge_p_b|isset}{$bridge_p_b}{else}0{/if}</span>
                                </li>

                            </ul>
                        </div>
                    </td>

                    <td>
                        <div class="game">
                            <h3 class="a">Soon...</h3>
                            <!--<div class="image">
                                <img src="profileStats/img/bed.jpg" alt="bed">
                            </div>-->
                            <ul>
                                <p class="notPlayed"><strong>{$username}</strong> hat <strong>Soon...</strong> noch nicht gespielt.</p>
                            </ul>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </main>

{else}
    <p class="noStats"><strong>{$username}</strong> {lang}wcf.user.profile.menu.stats.notverified{/lang}</p>
{/if}
