#!/bin/bash

# Create the LiveURL directory if it doesn't exist
mkdir -p "${GITHUB_WORKSPACE}/LiveURL"

# Navigate to the LiveURL directory
cd "${GITHUB_WORKSPACE}/LiveURL"

# Download the M3U files directly into the LiveURL directory
wget -q -O IPTV.m3u https://raw.githubusercontent.com/YueChan/Live/main/IPTV.m3u
wget -q -O Global.m3u https://raw.githubusercontent.com/YueChan/Live/main/Global.m3u

# Concatenate the files and save as Combined.m3u in the LiveURL directory
cat IPTV.m3u Global.m3u > Combined.m3u

