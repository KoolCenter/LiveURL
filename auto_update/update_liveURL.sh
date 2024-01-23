#!/bin/bash

pwd

# Download the M3U files directly into the LiveURL directory
wget -q -O IPTV.m3u https://raw.githubusercontent.com/YueChan/Live/main/IPTV.m3u
wget -q -O Global.m3u https://raw.githubusercontent.com/YueChan/Live/main/Global.m3u

# Concatenate the files and save as Combined.m3u in the LiveURL directory
cat IPTV.m3u <(tail -n +2 Global.m3u) > Combined.m3u
