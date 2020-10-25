
# 4. Across the United States, how have emissions from coal combustion-related sources changed 
# from 1999-2008?
library(dplyr) 
SCC.coal <- filter(SCC, grepl("coal", Short.Name, ignore.case = T))
NEI.coal <- filter(NEI, SCC %in% SCC.coal$SCC)
total.coal.US <- aggregate(Emissions ~ year + type, NEI.coal, sum)

ggplot(total.coal.US, aes(year, Emissions, col = type)) +
  geom_line() + 
  geom_point(aes(shape = type), show.legend = FALSE)+
  ggtitle("Total US PM2.5 Emissions From Coal Combustion-Related Sources by Type and Year") +
  xlab("Year") +
  ylab("US PM2.5 Coal Combustion-Related Emissions") +
  scale_colour_discrete(name = "Type of sources") +
  theme_bw() +
  theme(legend.title = element_text(face = "bold"))
dev.copy(png,"plot4.png", width=480, height=480)
dev.off()
