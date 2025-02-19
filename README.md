# NMC-Workshop-Data

## An R data package for the 2025 National Monitoring Conference "Creating Efficient and Reproducible Water Quality Workflows Using R" Workshop

This package provides some example R datasets for demonstration purposes for the 2025 "Creating Efficient and Reproducible Water Quality Workflows Using R" workshop.

## Installation

You can install NMC-Workshop-Data from Github:

```{r}
if(!"remotes"%in%installed.packages()){
install.packages("remotes")
}

remotes::install_github("mhweber/NMC-Workshop-Data")

library(NMC-Workshop-Data)
```

## Use

```{r}
data(GreenBay_FoxRiver)
```
