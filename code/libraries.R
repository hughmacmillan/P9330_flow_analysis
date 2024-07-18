#! /usr/bin/env Rscript





do_installs <- FALSE

#-----------------------packages----------------

if (do_installs) {
  
  if (!require("tidyverse")) {
    install.packages("tidyverse", dependencies = TRUE)
  }
  
  if (!require(flowCore)) { 
    
    if(!require(robustbase)){
      install.packages("robustbase")
    }
    BiocManager::install("flowCore")
  } 
  
  if (!require(Rphenograph)) {
    if(!require(devtools)){
      install.packages("devtools")
    }
    options(buildtools.check = function(action) TRUE )
    devtools::install_github("JinmiaoChenLab/Rphenograph")
    options(buildtools.check = function(action) FALSE )
  }
  
  
  if (!require(ggthemes)) {
    install.packages("ggthemes")
  }
  
  
  if (!requireNamespace("leiden")) {devtools::install_github("TomKellyGenetics/leiden")}
  #install.packages("leiden")
  
  
}


#------------ libraries ------------

library(leiden)
library(Rphenograph)
library(RANN)
library(flowCore)
library(robustbase)
library(knitr)
library(tidyverse)
library(dplyr)
library(rstatix)
library(ggthemes)
library(png)
library(uwot)
library(scales)

#getwd()

#  setwd("~/Newell_Lab/Jaeger_P9330/P9330_flow_analysis/code") 
#  source("~/Newell_Lab/Jaeger_P9330/src/mc_functions.R")



