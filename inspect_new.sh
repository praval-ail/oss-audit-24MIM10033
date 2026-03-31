#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="kernel" 
# my software of choice was the linux kernel so there isnt a standard way to directly check if the kernel is installed
# Universal Kernel Check
if [ "$PACKAGE" == "kernel" ]; then
    echo "$PACKAGE is installed and currently running!"
    echo "Active Version: $(uname -r)" #uname -r gives the exact version number for which kernel is currently loaded
    echo "System Info: $(uname -v)" #though similar to the -r it tells us the details of when and how the software was compiled
elif rpm -q "$PACKAGE" &>/dev/null; then
    # Keeps the RPM check for other packages like httpd or firefox
    echo "$PACKAGE is installed."
    rpm -qi "$PACKAGE" | grep -E 'Version|License|Summary'
else
    echo "$PACKAGE is NOT installed."
fi

# A case statement that prints a one-line
# added a note for each of the software giving a brief about what it does 

case $PACKAGE in
    httpd) 
        echo "Apache: the web server that built the open internet" 
        ;;
    mysql) 
        echo "MySQL: open source at the heart of millions of apps" 
        ;;
    kernel) 
  	echo "Linux Kernel:the foundation of all linux systems written by Linux Torvalds."
	;;
    firefox) 
        echo "Firefox: Championing a free, open, and privacy-respecting web for everyone." 
        ;;
    vlc) 
        echo "VLC: A testament to open-source multimedia, playing practically any file you throw at it." 
        ;;
esac
