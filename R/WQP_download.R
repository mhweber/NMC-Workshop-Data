UpdateExampleData <- function() {
  # Generate GreenBay_FoxRiver
  GreenBay_FoxRiver <- TADA_DataRetrieval(
    statecode = "WI",
    startDate = "2015-01-01",
    endDate = "2024-12-30",
    huc = c("040302040405"),
    applyautoclean = TRUE
  )

  print("GreenBay_FoxRiver")
  print(dim(GreenBay_FoxRiver))
  
  usethis::use_data(GreenBay_FoxRiver,
                    internal = FALSE, 
                    overwrite = TRUE,
                    compress = "xz", 
                    version = 3, 
                    ascii = FALSE)
  
  rm(GreenBay_FoxRiver)
}