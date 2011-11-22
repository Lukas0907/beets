======
 beet
======

----------------------------------------------
music tagger and library organizer
----------------------------------------------

:Date:   2011-11-21
:Version: 1.0b10
:Manual section: 1
:Manual group: beets

SYNOPSIS
========

| **beet** *command* [*args*...]
| **beet help** *command*

DESCRIPTION
===========

Beets is a media library management system for obsessive-compulsive
music geeks.

The purpose of beets is to get your music collection right once and for
all.
It catalogs your collection, automatically improving its metadata as it
goes using the MusicBrainz database.
It then provides a set of tools for manipulating and accessing your
music.

COMMAND OVERVIEW
================

beet import
    Add music to your library, attempting to get correct tags for it
    from MusicBrainz.
beet list
    Query the database for music.
beet modify
    Change the metadata for items or albums in the database.
beet move
    Move or copy items in your library.
beet update
    Update the library (and, optionally, move files) to reflect
    out-of-band metadata changes and file deletions.
beet stats
    Show some statistics on your entire library (if you don't provide a
    query or the matched items (if you do).
beet bpd
    (**bpd** plugin) Run an MPD-compatible music player server.
embedart
    (**embedart** plugin) Given an image file and a query matching an
    album, embed the image into the metadata of every track on the
    album.
extractart
    (**embedart** plugin) Extracts the image from an item matching the
    query and stores it in a file.
clearart
    (**embedart** plugin) Removes all embedded images from all items
    matching the query.
web
    (**web** plugin) Start a Web interface.

COMMAND REFERENCE
=================

For details on the option for each command, run **beet help** *command*,
or see the reference documentation.

SEE ALSO
========

``http://beets.readthedocs.org/``
