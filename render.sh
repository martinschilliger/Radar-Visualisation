#!/bin/bash
set -euo pipefail

#################################################################
##
## Configuration
##
#################################################################

INPUT_FILE=$1
COLOR_PALETTE=./styles/MeteoSwiss-Website.qml
TMP_FOLDER=.tmp
OUTPUT_FOLDERNAME=Rendered
OUTPUT_FORMAT=PNG
OUTPUT_ZOOM=8-10



#################################################################
##
## Script
##
#################################################################

# create temporary folder
mkdir -p ./$TMP_FOLDER

# analyze the input file into an *.vrt file (contains XML)
docker run --rm -v .:/home ghcr.io/osgeo/gdal:alpine-normal-latest gdal_translate -of VRT -ot Byte -scale /home/$INPUT_FILE /home/$TMP_FOLDER/analyze.vrt

# render the data to a GeoTiff image file (could already be used)
docker run --rm -v .:/home ghcr.io/osgeo/gdal:alpine-normal-latest pct2rgb -rgba -pct /home/$COLOR_PALETTE /home/$TMP_FOLDER/analyze.vrt /home/$TMP_FOLDER/result.tif

# render the GeoTiff image file into XYZ Tiles
docker run --rm -v .:/home ghcr.io/osgeo/gdal:alpine-normal-latest gdal2tiles --zoom=$OUTPUT_ZOOM /home/$TMP_FOLDER/result.tif /home/$TMP_FOLDER/$OUTPUT_FOLDERNAME

# if the output folder already exists, delete the old backup and move the existing into a backup folder
rm -rf ./$OUTPUT_FOLDERNAME
cp ./$TMP_FOLDER/$OUTPUT_FOLDERNAME -r ./$OUTPUT_FOLDERNAME

# remove the tmp folder
docker run --rm -v .:/home ghcr.io/osgeo/gdal:alpine-normal-latest rm -rf /home/$TMP_FOLDER
