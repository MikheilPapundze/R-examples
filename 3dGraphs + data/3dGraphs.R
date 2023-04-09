RawData <- read.csv("volcanoes-2023-04-08_20-31-57_-1200.csv", sep=";")
data <- RawData

library(plotly)


fig <- plot_ly(na.omit(data), x = ~Latitude, y = ~Longitude, z = ~Elevation, color= ~Elevation,colors = c('#ff382A', '#0C4Bff'))
fig <- fig %>% add_markers()
fig <- fig %>% layout(scene = list(xaxis = list(title = 'Latitude'),
                                   yaxis = list(title = 'Longitude'),
                                   zaxis = list(title = 'Elevation')))

fig