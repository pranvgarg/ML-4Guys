library(tidyverse)
library(igraph)
library(arules)
library(arulesViz)
library(readr)
library(tidyr)


groceries_raw <- read_delim("groceries.txt", 
                        delim = ";", escape_double = FALSE, col_names = FALSE, 
                        trim_ws = TRUE)

#adding index column to each basket
groceries_raw$index <- rownames(groceries_raw)


#this code breaks the basket into separate items while preserving the index
groceries <- groceries_raw %>%
  separate_rows(X1, sep = ",")

groceries$index <- as.numeric(groceries$index)

groceries$index <- factor(groceries$index)

#splitting becased on index
groceries = split(x=groceries$X1, f=groceries$index)

groceries_trans = as(groceries, "transactions")

#apriori sorting
grocrules = apriori(groceries_trans, 
                     parameter=list(support=.005, confidence=.1, maxlen=6))
#all combinations
inspect(grocrules)

#let's plot it to see the spread of confidence
plot(grocrules)

#in this table, we can see the items with very high confidence and high lift
inspect(subset(grocrules, subset=lift > 2 & confidence > 0.5))

#interesting pairs: baking powder & whole milk (0.009,0.52,2)
#lots of other things are related to whole milk, let's increase the lift and decrease the confidence

inspect(subset(grocrules, subset=lift > 3 & confidence > 0.1))
#interesting pairs: herbs & root vegetables (0.007,0.43,3.95); ham & white bread (0.005, 0.195, 4.63, both ways);
#berries & whipped/sour cream (0.009, 0.27, 3.8, both ways); waffles & chocolate (0.005, 0.15, 3, both ways); chicken & frozen vegetables (0.006, 0.15, 3.25, both ways)
#beef & root vegetables (0.017, 0.33, 3, both ways)

#let's decrease the lift to 2 and keep the confidence at 0.1
inspect(subset(grocrules, subset=lift > 1 & confidence > 0.03))
#unfortunately, when we decrease the lift, we start seein the expected correlations such as meat and sausage, onion and vegetables, etc.

playlists_graph = associations2igraph(subset(grocrules, lift>2), associationsAsNodes = FALSE)
igraph::write_graph(playlists_graph, file='grocrules.graphml', format = "graphml")


