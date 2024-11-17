library(readr)
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

# Histogram with normal curve
h <- hist(df$`Goal Scored`, 
          breaks = 6, 
          main = "Goal Scored Histogram", 
          xlab = "Goal Scored", 
          ylab = "Frequency", 
          col = "azure", 
          freq = TRUE)
x <- seq(min(df$`Goal Scored`), max(df$`Goal Scored`), length.out = 100)
mn <- mean(df$`Goal Scored`)
stdDev <- sd(df$`Goal Scored`)
yn <- dnorm(x, mean = mn, sd = stdDev)
box.size <- diff(h$mids)[1] * length(df$`Goal Scored`)
yn <- yn * box.size
lines(x, yn, col = "red", lwd = 2)
