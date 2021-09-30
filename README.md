# Notebooks
## Introduction
These Notebooks provides guidance and support for data processing of Conductivity Temperature Depth (CTD) measurements from instruments onboard of research vessels, and acquired from 1991 to 2020.

The data access relies on queries to remote OPeNDAP servers hosting the CTD data, and the data processing makes use of the Geostatistical Library (RIntaros / RGeostats) for the modelisation of geostatistical relationships between variables, and to interpolate gridded data maps out of irregular CTD point measurements. 

Two Notebooks have been developed for this purposes:
* **Barrents sea - Data Scientist Notebook**: this is targeted to a scientist, who wants to test and analyse the functions of the various data structures (eg dataframes and xarrays) and geostatistical modules (ie RGeostats).    
* **Barrents sea - Producer Notebook**: this is targeted to a producer, who has a specific goal in mind: producing a 2D map of *temperature* at a given depth, within a given bounding box and time interval, at a specified resolution. For this reason, at the beginning of this notebook, the user is prompted to enter the following input parameters:
    * **Depth**: the depth value of interest;  
    * **Bounding Box**: the longitude and latitude boundaries of interest;
    * **Time Range**: the month and year of interest; and
    * **Mesh**: the longitude and latitude resolution of the final map.  

The online access to CTD data is configured for the OPeNDAP Hyrax server hosted at IMR / NMDC: 
http://opendap1.nodc.no/opendap/physics/point/yearly/contents.html 

Note: for this server, the **.nc4** extension from the data access URLs is not supported.

The selection of the CTD campaigns at sea is supported via the **year** parameter in the *fetch_data(url, year)* function in *helpers.py*, and consequently all the *fetch_data(url, year)* function calls within the Notebook. 

Citation: refer to the EC INTAROS project (https://cordis.europa.eu/project/id/727890).

Additional guidance and instructions are included within the Notebooks themselves.


## Configuration
From this Jupyter Lab environment, click on the "New" button, open a "Terminal" and then execute all the following shell commands to create a conda environment with all the necessary Python packages, and activate a kernel with such environment which can be used in a Jupyter Notebook.

```
jupyter kernelspec uninstall env_intaros
conda env create -f ./environment.yml
conda activate env_intaros
conda list -n env_intaros
python -m ipykernel install --user --name env_intaros --display-name 'env_intaros'
```