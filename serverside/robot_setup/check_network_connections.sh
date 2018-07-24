#!/bin/bash

# *** Make a parameter to accept a string value
echo "Printing machines currently connected to the same router"
sudo arp-scan -l --interface=eth0
