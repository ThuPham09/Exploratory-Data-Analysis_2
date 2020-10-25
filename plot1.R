
#1. Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
# Using the base plotting system, make a plot showing the total PM2.5 emission from all 
# sources for each of the years 1999, 2002, 2005, and 2008.
tota.emission<-tapply(NEI$Emissions, NEI$year, sum)
tota.emission <- as.data.frame(tota.emission)
ra <- range(tota.emission$tota.emission )
plot(c(1999, 2002, 2005, 2008), tota.emission$tota.emission, type = "o", col = "blue", 
     main = "Total PM2.5 Emissions in the United States from 1999 to 2008", 
     xlim = c(1999,2008), ylim = ra,
     ylab = "Total US PM2.5 Emissions", xlab = "Year")

dev.copy(png,"plot1.png", width=480, height=480)
dev.off()
