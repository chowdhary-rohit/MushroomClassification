getwd()
mushrooms <- read.csv("mushrooms.csv", stringsAsFactors = TRUE)
str(mushrooms)
table(mushrooms$type)
library(RWeka)
mushrooms_1R <- OneR(type ~ ., data = mushrooms)
mushrooms_1R
summary(mushrooms_1R)
mushroom_JRip <- JRip(type ~ ., data = mushrooms)
mushroom_JRip
