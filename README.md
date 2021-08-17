# Test1 DAP1 - OPeNDAP NODC Access
## Introduction
This Notebook replicates the analysis undertaken in the "**Test1 DAP - OPeNDAP Xarray use cases.ipynb**" notebook for analysis and optimisation of online access to NetCDF datasets via queries to an OPeNDAP Server (https://github.com/ec-intaros/opendap-xarray-use-cases/blob/main/Test1%20DAP%20-%20OPeNDAP%20Xarray%20use%20cases.ipynb). 

The key difference with such notebook is the different access point under OPeNDAP NODC: http://opendap1.nodc.no/opendap/physics/point/yearly/contents.html. The old notebook  compared:
* Added the NODC access url, and deleted the HYRAX and THREDDS ones: ```nodc_url = 'http://opendap1.nodc.no/opendap/physics/point/yearly/' # on NODC server```
* Deleted the **.nc4** from the urls, because it's not included in NODC syntax
* Added **year** as a parameter in the *fetch_data(url, year)* function in *helpers.py*, and consequently updated all *fetch_data(url, year)* function calls within the notebook. 

This data refers to the EC INTAROS project (https://cordis.europa.eu/project/id/727890).

Guidance and instructions are included within the "**Test1 DAP1 - OPeNDAP NODC Access**" Notebook.