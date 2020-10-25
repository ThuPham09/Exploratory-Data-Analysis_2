
# 6. Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle 
# sources in Los Angeles County, California (fips == “06037”). 
# Which city has seen greater changes over time in motor vehicle emissions?

balt.LA.motors <- NEI[NEI$fips %in% c("24510","06037") & NEI$type == "ON-ROAD", ]
balt.LA.motors.emission <- aggregate(Emissions ~ year + fips, balt.LA.motors , sum)

ggplot(balt.LA.motors.emission, aes(year, Emissions, col = fips)) +
  geom_line() +
  geom_point() +
  ggtitle("Baltimore and Los Angeles PM2.5 Motor Emissions From Motor Vehicle by Year") +
  labs(x = "Year", y =("PM2.5 Motor Vehicle Emissions"))  +
  scale_colour_discrete(name = "City", labels = c("Los Angeles", "Baltimore")) +
  theme_bw() +
  theme(legend.title = element_text(face = "bold"))
dev.copy(png,"plot6.png", width=480, height=480)
dev.off()

