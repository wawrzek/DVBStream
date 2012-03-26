#!/bin/sh
DUMPRTP=dumprtp
TSFILTER=ts_filter
# MPG123 is in the mpg123 package

# APID is the Audio PID of the radio station to listen to
MPG123='mpg123 -'


$DUMPRTP | $TSFILTER $APID | $MPG123
