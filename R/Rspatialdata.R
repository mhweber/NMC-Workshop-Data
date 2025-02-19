#' Sample datasets to use for the 2021 R spatial workshop
#'
#' This package contains sample data to use for
#' demonstration purposes for the 2021 R spatial workshop.
#' @docType package
#' @name Rspatialdata
#' @aliases Rspatialdata Rspatialdata-package
NULL

#' Austin bike paths - a dataset of bicycle transportation
#' facilities developed by the City of Austin and published
#' as an ArcGIS REST service.
#'
#' @source \url{https://services.arcgis.com/0L95CJ0VTaxqcmED/arcgis/rest/services/TRANSPORTATION_bicycle_facilities/FeatureServer/0}
#' @format An sf data frame of 12203 observations and 20 variables
"bike_paths"

#' Austin parks - a dataset of park boundaries developed by
#' the City of Austin and publishedas an ArcGIS REST service.
#'
#' @source \url{https://services.arcgis.com/0L95CJ0VTaxqcmED/arcgis/rest/services/BOUNDARIES_city_of_austin_parks/FeatureServer/0}
#' @format An sf data frame of 304 observations and 56 variables
"parks"

#' PNW states - Pacific Northwest states in custom Alber projection
#'
#' @source USAboundaries package
#' @format An sf data
"pnw"

#' CraterLake - Crater Lake National Park boundary
#'
#' @source \url{https://opendata.arcgis.com/datasets/c8d60ffcbf5c4030a17762fe10e81c6a_2.geojson}
#' @format An sf data frame
"CraterLake"

#' elevation - srtm 90 meter elevation data for area
#'             around Crater Lake National Park
#'
#' @source \url{https://srtm.csi.cgiar.org/wp-content/uploads/files/srtm_5x5/TIFF/srtm_12_04.zip}
#' @format A spatRaster object
"elevation"
