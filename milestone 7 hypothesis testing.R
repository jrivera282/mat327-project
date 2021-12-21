library(readr)
library(dplyr)
library(ggplot2)
library(reshape2)
twitch <- read_csv("twitchdata-update.csv")

##alpha = 0.05
###Hypothesis_1 H0 Null Hypothesis
###average viewers mean is less then 10000
##hypothesis test
x_bar = mean(twitch$`Average viewers`)
s = sd(twitch$`Average viewers`)
mu_0 = 10000
n = 1000

t = (x_bar - mu_0)/ (s/ sqrt(n)) #test statistic 37.4070913854069

pt(t, df = n - 1) # p-value = 0.5

#since our p value is greater then 0.05 we fail to reject the  null hypothesis

### Hypothesis_2 Ha Alternative Hypothesis
#followers mean is less then 1,000,000
#hypothesis test

x_bar = mean(twitch$Followers)
s = sd(twitch$Followers)
mu_0 = 1000000
n = 1000

t = (x_bar - mu_0)/ (s/ sqrt(n))

pt(t, df = n - 1) # p-value 7.362796e-57
#p value is less then 0.05 we reject the hypothesis