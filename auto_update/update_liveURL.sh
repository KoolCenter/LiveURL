#!/bin/bash


# Download the M3U files into the specified directory
wget -q -O KoolCenter/LiveURL/IPTV.m3u https://raw.githubusercontent.com/YueChan/Live/main/IPTV.m3u
wget -q -O KoolCenter/LiveURL/Global.m3u https://raw.githubusercontent.com/YueChan/Live/main/Global.m3u

# Concatenate the files and save in the specified directory
cat KoolCenter/LiveURL/IPTV.m3u KoolCenter/LiveURL/Global.m3u > KoolCenter/LiveURL/Combined.m3u
