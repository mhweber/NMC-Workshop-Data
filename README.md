# Rspatialworkshop
## An R data package for the 2021 R user group spatial workshop

This package provides some example R datasets for demonstration purposes for the 2021 R spatial workshop. The ArcGIS REST services have been scraped and transformed to `sf` objects using the [esri2sf R package](https://github.com/yonghah/esri2sf):


## Installation
You can install Rspatialworkshop from Github:
```
library(devtools)
install_github("mhweber/Rspatialworkshop")
library(Rspatialworkshop)
```

## Use
```
library(sf)
library(terra)
data(package = "Rspatialworkshop")
data(bike_paths)
data(parks)
data(pnw)
data(CraterLake)
```

