====================
Dockerfile for xtide
===================

Build the docker image
======================

docker build -t xtide .

Get tide info
=============

docker run xtide /xtide/xtide-2.14/tide -l "seattle"

Print hourly time series to file
================================

docker run xtide /xtide/xtide-2.14/tide -l "seattle" -m r -s "01:00" > out.csv

Plot contents of out.csv
========================

python plot.py