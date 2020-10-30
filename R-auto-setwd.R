############################################################################################
### R script: Auto Set R Working Directory ::: setwd()
### Version: 0.1, November 2020
### Yuri Andrei Gelsleichter
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
### Install the needed package
install.packages("rstudioapi")

### Load the needed package, and proceeed with the commands
library(rstudioapi); current_path <- getActiveDocumentContext()$path; setwd(dirname(current_path)) ### https://eranraviv.com/r-tips-and-tricks-working-directory/

### Check the working directory
getwd()
gc(); rm(list=ls())

### load the data
df <- read.csv("data_t.csv")

### etc

### credits: https://eranraviv.com/r-tips-and-tricks-working-directory/
