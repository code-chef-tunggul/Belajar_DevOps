#!/bin/bash

echo "--- LAPORAN KESEHATAN SERVER---"
echo "User saat ini: $(whoami)"
echo "Waktu sekarang: $(date)"
echo "Sisa penyimpanan:"
df -h| grep "sd"
echo "--------------------------------------"

