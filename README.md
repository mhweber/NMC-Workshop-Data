# NMC-Workshop-Data
## An R data package for the 2025 National Monitoring Conference "Creating Efficient and Reproducible Water Quality Workflows Using R" Workshop

This package provides some example R datasets for demonstration purposes for the 2025 "Creating Efficient and Reproducible Water Quality Workflows Using R" workshop. 


## Installation
You can install Rspatialworkshop from Github:
```
library(devtools)
install_github("mhweber/NMC-Workshop-Data")
library(NMC-Workshop-Data)
```

## Use
```
library(sf)
library(terra)
data(package = "NMC-Workshop-Data")
data(bike_paths)
data(parks)
data(pnw)
data(CraterLake)
```

