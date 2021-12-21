library(readr)
library(dplyr)
library(ggplot2)
library(reshape2)
twitch <- read_csv("twitchdata-update.csv")

## linear regression
#Followers

x <- twitch$`Average viewers`
  
y <- twitch$`Followers gained`





#Compute the linear regression model using one or more of the other data columns as the independent variable(s
linear_model <- lm(twitch$"Followers gained" ~ twitch$"Average viewers", data = twitch)

plot(twitch$"Followers gained" ~ twitch$"Average viewers", data = twitch,
     xlab = "Followers Gained",
     ylab = "Average Viewers",
     main = "Followers Gained vs Average Viewers")

#Assess the fit of the model by computing R-squared
summary(linear_model)$r.squared ## r squared Multiple R-squared:  0.1764818,	Adjusted R-squared:  0.1757 

#plotting a histogram of the residuals, 
hist(linear_model$residuals)

#plotting a scatter plot of the actual observed response value (x axis) vs. residual (y axis).
summary(linear_model)

plot(twitch$`Followers gained`,linear_model$residuals,xlab = "Observed Response Value",ylab = "Residual")


linear_model$terms
