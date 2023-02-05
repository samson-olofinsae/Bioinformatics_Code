# set a working directory

setwd(C:/Desktop/Bioinformatics)

# load the essential libraries

library(tidyverse)
library(dplyr)

# Read-in all data

# for Olivieri et al. 2020

Olivieri <- read_csv("Olivieri.csv", TRUE, "")

# Read-in data Hustedt et al. 2019 for individual data for each cell-line treatment pair
# For RPE1_hTER_P53-AZD6738 (alias R_A)

R_A <- read_csv("hust_RPE1_hTER_p53_AZD6738.csv" , TRUE, "")

# For hust_RPE1_hTER_p53_VE821 (alias R_V)

R_V <- read_csv("hust_RPE1_hTER_p53_VE821.csv", TRUE, "")

# For hust_HELA_VE821 (alisas H_v)

H_V <- read_csv("hust_HELA_VE821.csv", TRUE, "")

# For HCT116_AZD6738 (alias H_A)

H_A <- read_csv("hust_HCT116_AZD6738.csv", TRUE, "")

# For HCT116_VE821 (alias HC_V)

HC_V <- read_csv("hust_HCT116_VE821.csv", TRUE, "")

# For MCF10A_AZD6738 (alias M_A)

M_A <- read_csv("hust_MCF10A_AZD6738.csv", TRUE, "")

# For 293A_AZD6738 (alias Two_A)

Two_A <- read_csv("hust_293A_AZD6738.csv", TRUE, "")



# combined all dataset and save as Testdata.csv

Testdata <- rbind(R_A, R_V, H_V, H_A, HC_V, M_A, Two_A)
view(Testdata)
