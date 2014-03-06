#!/bin/sh
# This is a simple bash script to run the parse container.
# - rm command kills as soon as complete.
# PATH IS THE LOCATION ON THE HOST OF THE PGN FILES
#PATH='/glusterfs/users/nharding/pgn_data'
HOSTPATH='/home/nharding/'
docker run -d -t -name parsepgn -v ${HOSTPATH}/pgn_data:/pgn:ro -v ${HOSTPATH}/chessDB:/data parsepgn $@
