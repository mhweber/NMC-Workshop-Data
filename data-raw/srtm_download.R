download_srtm <- function(destination_filename){
  url <- "https://srtm.csi.cgiar.org/wp-content/uploads/files/srtm_5x5/TIFF/srtm_12_04.zip"
  download.file(url, destination_filename)
  return(destination_filename)
}

preprocess_srtm <- function(filename, border_vector){
  dir_name <- dirname(filename)
  unzip(filename, exdir = dir_name)
  vector_extent <- vector_obj %>%
    st_buffer(., 20000) %>%
    st_transform(., crs = 4326)

  paste0(dir_name, "/srtm_12_04.tif") %>%
    rast(.) %>%
    # projectRaster(., crs = st_crs(vector_obj)$proj4string) %>%
    crop(., vector_extent) %>%
    writeRaster(., paste0(dir_name, "/elevation.tif"),
                overwrite=TRUE, datatype="INT2U", wopt= list(gdal=c("COMPRESS=LZW", "TFW=YES","of=COG")))

  dir(dir_name, pattern = "srtm_12_04*", full.names = TRUE) %>%
    file.remove(.)
  dir(dir_name, pattern = "readme.txt", full.names = TRUE) %>%
    file.remove(.)
}
