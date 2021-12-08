library(readr)

twitch <- read_csv("twitchdata-update.csv")

## for this mile stone i choice Stream time and average viewer count
## stream time

#mean 120515.2 minutes
mean(twitch$`Stream time(minutes)`)

#median 108240 minutes
median(twitch$`Stream time(minutes)`)

#variance 7289095759 minutes
var(twitch$`Stream time(minutes)`)

#standard deviation 85376.2 minutes
sd(twitch$`Stream time(minutes)`)


## average viewer count

#mean 4781.04
mean(twitch$`Average viewers`)

#median 2425
median(twitch$`Average viewers`)

#variance 71464789
var(twitch$`Average viewers`)

#standard deviation 8453.685
sd(twitch$`Average viewers`)
