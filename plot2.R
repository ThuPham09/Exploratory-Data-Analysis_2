# 2. Have total emissions from PM2.5 decreased in the Baltimore City, Maryland 
#(fips == “24510”) from 1999 to 2008? Use the base plotting system to make a plot 
# answering this question.

baltimore <- subset(NEI, NEI$fips == "24510")
tota.emission.baltimore<-tapply(baltimore$Emissions, baltimore$year, sum)
tota.emission.baltimore <- as.data.frame(tota.emission.baltimore)
ra1 <- range(tota.emission.baltimore$tota.emission.baltimore )

plot(c(1999, 2002, 2005, 2008), tota.emission.baltimore$tota.emission.baltimore, 
     type = "o", col = "blue", 
     main = "Total PM2.5 Emissions in Baltimore from 1999 to 2008", 
     xlim = c(1999,2008), ylim = ra1,
     ylab = "Total Baltimore PM2.5 Emissions", xlab = "Year")

dev.copy(png,"plot2.png", width=480, height=480)
dev.off()
