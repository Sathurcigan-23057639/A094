#show data set
head(FIFA_2018_Statistics,2)

#Scatterplot 
plot(FIFA_2018_Statistics$`Ball Possession %`, FIFA_2018_Statistics$`Goal Scored`,
     xlab = "Ball Possession %", ylab =
       "Goal Scored", main
     = "Scatterplot of Ball Possession % vs Goal Scored") #

abline(lm(FIFA_2018_Statistics$`Goal Scored` ~
            FIFA_2018_Statistics$`Ball Possession %`), col = "red")

#Histogram
hist(FIFA_2018_Statistics$`Goal Scored`, main = "Goal Scored Frequency")
cor.test(FIFA_2018_Statistics$`Ball Possession %`, FIFA_2018_Statistics$`Goal Scored`,
         method="spearman")

# Histogram 
h <- hist(df$`Goal Scored`, 
          breaks = 6, 
          main = "Goal Scored Histogram", 
          xlab = "Goal Scored", 
          ylab = "Frequency", 
          col = "azure", 
          freq = TRUE)
