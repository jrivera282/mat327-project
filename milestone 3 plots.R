library(readr)

twitch <- read_csv("twitchdata-update.csv")

## histogram of the average amount of viewers
hist(twitch$`Average viewers`)

## histogram of time spent streaming in minutes
hist(twitch$`Stream time(minutes)`)

## histogram of peak viewers
hist(twitch$`Peak viewers`)

## histogram of watch time in minutes 
hist(twitch$`Watch time(Minutes)`)
