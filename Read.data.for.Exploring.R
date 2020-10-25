#Coursera
# Exploratory Data Analysis
library(ggplot2)
library(readr)

#library(RColorBrewer)
# Download and unzip the file:
# dir.create("./air_pollution")
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
download.file(url, destfile = "./air_pollution.zip" )
unzip("./air_pollution.zip", exdir = "./air_pollution" )

# read each of the two files in air_pollution
NEI <- readRDS("air_pollution/summarySCC_PM25.rds")
SCC <- readRDS("air_pollution/Source_Classification_Code.rds")

# structure, head of NEI data
str(NEI)
head(NEI)
# structure, head of SCC data
str(SCC)
head(SCC)
