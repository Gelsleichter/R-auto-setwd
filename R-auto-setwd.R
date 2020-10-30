############################################################################################
### R script: Auto Arima for multiple time series
### Version: 0.1, November 2020
### Yuri Andrei Gelsleichter and Rafael Delgado
### License: CC-BY-NC-SA
############################################################################################
#    ___                __                   __            __
#   / _ \    ___ ___ __/ /____      ___ ___ / /__    _____/ /
#  / , _/   / _ `/ // / __/ _ \    (_-</ -_) __/ |/|/ / _  / 
# /_/|_|    \_,_/\_,_/\__/\___/   /___/\__/\__/|__,__/\_,_/  
#
# figlet -f smslant R-auto-setwd ### run on terminal ctrl+alt+enter (for linux)
# showfigfonts (for linux)
############################################################################################

### Set and check the working directory AUTOMATICALLY
### Auto setwd
install.packages("rstudioapi")
library(rstudioapi); current_path <- getActiveDocumentContext()$path; setwd(dirname(current_path)) ### https://eranraviv.com/r-tips-and-tricks-working-directory/
getwd()
gc(); rm(list=ls())

### load the data
df <- read.csv("data_t.csv")


### credits: https://eranraviv.com/r-tips-and-tricks-working-directory/