UpdateGetATTAINSData <- function(){
  GreenBay_FoxRiver_ATTAINS <- NMCWorkshopData::GreenBay_FoxRiver
  
  GreenBay_FoxRiver <- EPATADA::TADA_AutoClean(GreenBay_FoxRiver)
    
  GreenBay_FoxRiver <- GreenBay_FoxRiver %>%
      dplyr::filter(TADA.ComparableDataIdentifier %in%
                      c("SPECIFIC CONDUCTANCE_NA_NA_US/CM", 
                        "PH_NA_NA_NA", 
                        "TOTAL NITROGEN, MIXED FORMS_UNFILTERED_AS N_MG/L",
                        "TOTAL PHOSPHORUS, MIXED FORMS_UNFILTERED_AS P_UG/L",
                        "DISSOLVED OXYGEN (DO)_NA_NA_MG/L"))
    
    GreenBay_FoxRiver <- EPATADA::TADA_FindPotentialDuplicatesSingleOrg(GreenBay_FoxRiver)
    
    GreenBay_FoxRiver <- dplyr::filter(GreenBay_FoxRiver, TADA.SingleOrgDup.Flag == "Unique")
    
    
    
    GreenBay_FoxRiver <- EPATADA::TADA_SimpleCensoredMethods(GreenBay_FoxRiver, nd_method = "multiplier", 
                                                    nd_multiplier = 0.5, od_method = "as-is", 
                                                    od_multiplier = "null")
    
    
    GreenBay_FoxRiver <- EPATADA::TADA_FindPotentialDuplicatesMultipleOrgs(GreenBay_FoxRiver)
    
    GreenBay_FoxRiver <- dplyr::filter(GreenBay_FoxRiver, TADA.ResultSelectedMultipleOrgs == "Y")
    
    GreenBay_FoxRiver <- EPATADA::TADA_RunKeyFlagFunctions(GreenBay_FoxRiver, clean = TRUE)
    
    GreenBay_FoxRiver <- EPATADA::TADA_AutoFilter(GreenBay_FoxRiver)
    
    GreenBay_FoxRiver <- EPATADA::TADA_FlagAboveThreshold(GreenBay_FoxRiver, clean = FALSE, 
                                                 flaggedonly = FALSE)
    
    GreenBay_FoxRiver <- EPATADA::TADA_FlagBelowThreshold(GreenBay_FoxRiver, clean = FALSE, 
                                                 flaggedonly = FALSE)
    
    GreenBay_FoxRiver <- EPATADA::TADA_HarmonizeSynonyms(GreenBay_FoxRiver)
    
    GreenBay_FoxRiver <- EPATADA::TADA_CalculateTotalNP(GreenBay_FoxRiver, daily_agg = "max")
    
    WQP_with_ATTAINSonly <- EPATADA::TADA_GetATTAINS(GreenBay_FoxRiver, fill_catchments = FALSE, return_sf = TRUE)
    
    rm(GreenBayFoxRiver)
    
    usethis::use_data(WQP_with_ATTAINSonly,
                      internal = FALSE, 
                      overwrite = TRUE,
                      compress = "xz", 
                      version = 3, 
                      ascii = FALSE)
    
    rm(WQP_with_ATTAINSonly)
    }