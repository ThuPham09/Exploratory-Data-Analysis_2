# 5. How have emissions from motor vehicle sources changed from 1999-2008 in Baltimore City?
baltimore.motor <- subset(NEI, NEI$fips == "24510" & NEI$type == "ON-ROAD")
baltimore.motor.emission <- aggregate(Emissions ~ year, baltimore.motor, sum)

ggplot(baltimore.motor.emission, aes(year, Emissions)) +
  geom_line() +
  geom_point() +
  ggtitle("Emissions From Motor Vehicle Sources From 1999–2008 in Baltimore City") +
  xlab("Year") +
  ylab("PM2.5 Motor Vehicle Emissions")+
  theme_bw() 
dev.copy(png,"plot5.png", width=480, height=480)
dev.off()
