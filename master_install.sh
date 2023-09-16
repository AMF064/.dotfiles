#!/bin/sh

PROGRAM_LIST=$(cat PROGRAMS)

#Install packages in MANIFEST
pacman -S $PROGRAM_LIST
