library(readr)
twitch <- read_csv("twitchdata-update.csv")



## scatterplot
plot(twitch$`Stream time(minutes)`,twitch$`Average viewers`, xlab = "Stream time(minutes)", ylab = "Average viewers",main = "Stream time (minutes) vs Average viewer count")


#correlation -0.2492478
cor(twitch$`Stream time(minutes)`,twitch$`Average viewers`)

## Average viewers 
# 95 % confidence interval 4256.449 5305.631
c(mean(twitch$`Average viewers`) - qt(0.975, df = nrow(twitch)-1) * sd(twitch$`Average viewers`) / sqrt(nrow(twitch)),  mean(twitch$`Average viewers`) + qt(0.975, df = nrow(twitch)-1) * sd(twitch$`Average viewers`) / sqrt(nrow(twitch)))



## Stream time(minutes)
#95 % confidence interval 115217.2 125813.2
c(mean(twitch$`Stream time(minutes)`) - qt(0.975, df = nrow(twitch)-1) * sd(twitch$`Stream time(minutes)`) / sqrt(nrow(twitch)),  mean(twitch$`Stream time(minutes)`) + qt(0.975, df = nrow(twitch)-1) * sd(twitch$`Stream time(minutes)`) / sqrt(nrow(twitch)))
