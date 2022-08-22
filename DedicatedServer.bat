@echo off
::///////////////////////////////////////////////////////////////////////
::///  	      IW4x Dedicated Server Configuration start-up file       ///
::///////////////////////////////////////////////////////////////////////
::// For support visit us on discord discordapp.com/invite/sKeVmR3     //
:://                                                                   //
:://                    Your Game Server Port.	       	       	       //
:://            Make sure you Port Forward both UDP & TCP              //
::///////////////////////////////////////////////////////////////////////

set GamePort=28960


::///////////////////////////////////////////////////////////////////////
:://              Offline/Private LAN Party Mode                       //
:://	     0 Disable (Send heartbeats to online serverlist)          //
:://	  1 Enable (Add to the Local serverlist. Unlisted from Public) //
::///////////////////////////////////////////////////////////////////////

set LANMode=0


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
::// 	Your edited server.cfg in the "userraw" folder goes here...    //
:://	This is were you edit your hostname, rcon, inactivity, etc     //
:://                        (Optional)                                 //
::///////////////////////////////////////////////////////////////////////


set ServerFilename=server.cfg


::///////////////////////////////////////////////////////////////////////
:://DONE!! WARNING! Don't mess with anything below this line. SEROUSLY!//
::///////////////////////////////////////////////////////////////////////

start iw4x.exe -dedicated +set fs_game "%ModFolderName%" +set sv_lanonly "%LANMode%" +set net_port "%GamePort%" +exec %ServerFilename% +set party_enable "0" +map_rotate
