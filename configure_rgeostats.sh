#!/bin/bash

# This script aims at configuring Ellip Jupyter Notebooks server
# for INTAROS RGeostats workshop

# Ask confirmation
echo ""
echo "## Welcome to RGeostats configuration script! ##"
echo ""
echo "You are going to overwrite old workshop stuff from the current directory."
read -p "Are you sure (Y/N)? " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit
fi

# # Python modules
# pip install netCDF4
# pip install numpy
# pip install shapely
# pip install urllib3

# R packages
for package in r-rcpp r-maps r-mapdata r-mapproj r-png r-fields r-maptools r-proj4 r-ncdf4 r-raster r-rgdal r-gsl r-misc3d; do
  conda install -y -n python2 $package
done

# RGeostats and RIntaros packages
Rscript_cmd="/opt/anaconda/envs/python2/bin/Rscript"
$Rscript_cmd -e 'install.packages("http://cg.ensmp.fr/rgeos/DOWNLOAD/RGeostats_12.1.0_linux64.tar.gz")'
$Rscript_cmd -e 'install.packages("http://cg.ensmp.fr/rgeos/DOWNLOAD/RIntaros_2.2_linux64.tar.gz")'
