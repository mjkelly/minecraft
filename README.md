minecraft
=========

Scripts for running a Minecraft server on a Linux machine.

This is not intended for a general audience. It's just so I can move between
machines with minimal pain.

Notes
-----

Search for "SETUP:" in all files for notes on things that may need changing.

/home/minecraft is the home direcory.
/home/minecraft/minecraft is the actual minecraft server directory.
/home/minecraft/overviewer is the output of the Minecraft Overviewer, suitable
for a webroot.

This setup includes scripts to invoke the Minecraft Overviewer
(http://overviewer.org), which generates nice interactive maps of minecraft
maps.

It also includes a config file for mark2 (https://github.com/mcdevs/mark2),
which is a wrapper for the minecraft server, and the thing that manages the
'backups' and 'logs' subdirectories in /home/minecraft/minecraft.
