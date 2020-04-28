# problem 3
# Author, Zhengyu Pan
# April 28th, 2020

# import the library
library(ggplot2)


# import data, I half guessing the data by the given graph. 
# (Holtz, n.d.)(RPubs - Reordering a Ggplot Bar Chart Axis, n.d.)
data <- data.frame(country <- c("Belgium", "Spain", "Italy","France", "Netherlands",
                                "Sweden",  "Ireland", "Switzerland", "Portugal", "Denmark", 
                                "Germany","Austria"), 
                   fatalityRate <- c(59,48,44,34,25,
                                     22,21,18,8,7,
                                     6,5))
# plot the data 
# (Holtz, n.d.)(RPubs - Reordering a Ggplot Bar Chart Axis, n.d.)
ggplot(data, aes(x=reorder(country, +fatalityRate), y=fatalityRate)) + geom_bar(stat = "identity", fill = "dodgerblue")+  coord_flip()

# reference 
# Holtz, Y. (n.d.). Basic barplot with ggplot2. Retrieved April 28, 2020, from https://www.r-graph-gallery.com/218-basic-barplots-with-ggplot2.html
# RPubs—Reordering a ggplot bar chart axis. (n.d.). Retrieved April 28, 2020, from https://www.rpubs.com/dvdunne/reorder_ggplot_barchart_axis


