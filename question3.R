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
# (Holtz, n.d.)(“GGPlot Title, Subtitle and Caption,” 2018)
# (“How to Structure Your Code in R,” n.d.)(Modify Axis, Legend, and Plot Labels — Labs, n.d.)
# (R Ggplot2 Center Align a Multi-Line Title, n.d.)
# (RPubs - Reordering a Ggplot Bar Chart Axis, n.d.)
gg1 <-ggplot(data, aes(x=reorder(country,+fatalityRate), y=fatalityRate))
gg2 <- gg1 +geom_bar(stat = "identity", fill = "dodgerblue")
gg3 <- gg2 +coord_flip() + ggtitle(label  = "German efficiency", 
                                   subtitle = "Covid-19 deaths per 100,000 population 
                                   \nEurope, selected countries, to April 25th 2020")
gg4 <- gg3 +labs(x = "country", y = "fatality rate")
gg4
# reference 
# Holtz, Y. (n.d.). Basic barplot with ggplot2. Retrieved April 28, 2020, from https://www.r-graph-gallery.com/218-basic-barplots-with-ggplot2.html
# RPubs—Reordering a ggplot bar chart axis. (n.d.). Retrieved April 28, 2020, from https://www.rpubs.com/dvdunne/reorder_ggplot_barchart_axis

#Reference
#GGPlot Title, Subtitle and Caption: The Ultimate Guide. (2018, November 11). Datanovia. https://www.datanovia.com/en/blog/ggplot-title-subtitle-and-caption/
#Holtz, Y. (n.d.). Basic barplot with ggplot2. Retrieved April 28, 2020, from https://www.r-graph-gallery.com/218-basic-barplots-with-ggplot2.html
#How to Structure Your Code in R. (n.d.). Dummies. Retrieved April 28, 2020, from https://www.dummies.com/programming/r/how-to-structure-your-code-in-r/
#Modify axis, legend, and plot labels—Labs. (n.d.). Retrieved April 28, 2020, from https://ggplot2.tidyverse.org/reference/labs.html
#R ggplot2 center align a multi-line title. (n.d.). Stack Overflow. Retrieved April 28, 2020, from https://stackoverflow.com/questions/16074440/r-ggplot2-center-align-a-multi-line-title
#RPubs—Reordering a ggplot bar chart axis. (n.d.). Retrieved April 28, 2020, from https://www.rpubs.com/dvdunne/reorder_ggplot_barchart_axis


