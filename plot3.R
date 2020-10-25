
# 3. Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, 
# which of these four sources have seen decreases in emissions from 1999-2008 for Baltimore City? 
# Which have seen increases in emissions from 1999-2008? Use the ggplot2 plotting system to make 
# a plot answer this question. 

library(ggplot2)

baltimore <- subset(NEI, NEI$fips == "24510")
baltimore.type <- aggregate(Emissions ~ year + type, baltimore, sum)

ggplot(baltimore.type, aes(year, Emissions, col = type)) +
  geom_line() + geom_point(aes(shape = type), show.legend = FALSE)+
  ggtitle("Total PM2.5 Emissions in Baltimore by Type from 1999-2008") +
  ylab("Total Baltimore PM2.5 Emissions") +
  xlab("Year") +
  scale_colour_discrete(name = "Type of sources") +
  theme_bw() +
  theme(legend.title = element_text(face = "bold"))

dev.copy(png,"plot3.png", width=480, height=480)
dev.off()
