@echo off
::///////////////////////////////////////////////////////////////////////
::///  	      IW4x Lobby Server Configuration start-up file           ///
::///////////////////////////////////////////////////////////////////////
::// For support visit us on discord discordapp.com/invite/sKeVmR3     //
:://                                                                   //
::// Defualt Playlist Gamemode from myplaylists.info                   //
::// (If you change that file around. consider this list useless..)    //
:://                                                                   //
::// 0 iw4x DLC	 (bonus edit)                                          //
::// 1 Team Deathmatch                                                 //
::// 2 Hardcore Team Deathmatch                                        //
::// 3 Free-for-all                                                    //
::// 4 Hardcore Free-for-all                                           //
::// 5 Domination                                                      //
::// 6 Hardcore: Domination                                            //
::// 7 Search and Destory                                              //
::// 8 Hardcore: Search and Destory                                    //
::// 9 Demolition                                                      //
::// 10 Hardcore: Demolition                                           //
::// 11 Capture the flag                                               //
::// 12 Hardcore: Capture the flag                                     //
::// 13 Headquarters                                                   //
::// 14 Hardcore: Headquarters                                         //
::// 15 Sabotage                                                       //
::// 16 Hardcore: Sabotage                                             //
::// 17 Ground War                                                     //
::// 18 Hardcore: Ground War                                           //
:://                                                                   //
::///////////////////////////////////////////////////////////////////////

::///////////////////////////////////////////////////////////////////////
:://       Choose your gamemode of 0-22 of your choice above           //
::///////////////////////////////////////////////////////////////////////

set PlaylistGameMode=1

::///////////////////////////////////////////////////////////////////////
:://                    Your Game Server Port.	       	       	       //
:://            Make sure you Port Forward both UDP & TCP              //
::///////////////////////////////////////////////////////////////////////

set GamePort=28960


::///////////////////////////////////////////////////////////////////////
:://              Offline/Private LAN Party Mode                       //
:://	     0 Disable (Send heartbeats to online serverlist)          //
:://	  1 Enable (Add to the Local serverlist. Unlisted from Public) //
::///////////////////////////////////////////////////////////////////////


set LANMode=1


::///////////////////////////////////////////////////////////////////////
::// Below edits are optional unless you run multiable servers or mods.//
::///////////////////////////////////////////////////////////////////////
:://               Load a mod on your server                           //
:://	           Example: ModfolderName=mods/bots                    //
:://                                                                   //
:://               UNLOAD a mod on your server                         //
:://               Example: ModfolderName=                             //
::///////////////////////////////////////////////////////////////////////


set ModFolderName=


::///////////////////////////////////////////////////////////////////////
::// Your edited Playlist in the "userraw" folder goes here (optional) //
::///////////////////////////////////////////////////////////////////////


set PlaylistFilename=myplaylists.info


::///////////////////////////////////////////////////////////////////////
::// 	Your edited partyserver.cfg in the "userraw" folder goes here  //
:://	This is were you edit your hostname, rcon, inactivity, etc     //
:://                        (Optional)                                 //
::///////////////////////////////////////////////////////////////////////


set ServerFilename=partyserverlan.cfg

::///////////////////////////////////////////////////////////////////////
:://DONE!! WARNING! Don't mess with anything below this line. SEROUSLY!//
::///////////////////////////////////////////////////////////////////////

start iw4x.exe -dedicated +set fs_game "%ModFolderName%" +set sv_lanonly "%LANMode%" +set net_port "%GamePort%" +exec %ServerFilename% +set party_enable "1" +set playlistFilename "%PlaylistFilename%" +playlist "%playlistGameMode%"
