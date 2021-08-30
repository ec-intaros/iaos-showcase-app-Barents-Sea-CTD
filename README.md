# Barrents sea - CTD data processing
## Introduction
This Notebook provides guidance and support for data processing of CTD data, in particular by making use of the Geostatistical Library (RIntaros / RGeostats) for the modelisation of geostatistical relationships between variables, and to interpolate gridded data maps out of irregular CTD point measurements.

The online access to CTD data is configured for the OPeNDAP Hyrax server hosted at IMR / NMDC: 
http://opendap1.nodc.no/opendap/physics/point/yearly/contents.html 

Note: for this server, the **.nc4** extension from the data access URLs is not supported.

The multi-year selection for CTD campaigns at sea is supported via the **year** parameter in the *fetch_data(url, year)* function in *helpers.py*, and consequently all the *fetch_data(url, year)* function calls within the Notebook. 

Citation: refer to the EC INTAROS project (https://cordis.europa.eu/project/id/727890).

Additional guidance and instructions are included within the Notebook itself.


## Configuration
From this Jupyter Lab environment, click on the "New" button, open a "Terminal" and then execute all the following shell commands:  
```
chmod +x configure_rgeostats.sh
./configure_rgeostats.sh
```
