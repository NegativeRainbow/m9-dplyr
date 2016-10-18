# Exercise 2: Data Frame Practice with `dplyr`.
# Use a different appraoch to accomplish the same tasks as exercise-1
#install.packages('dplyr')
# Install devtools package: allows installations from GitHub
#install.packages('devtools')

# Install "fueleconomy" package from GitHub
#devtools::install_github("hadley/fueleconomy")

# Require/library the fueleconomy package
library(fueleconomy)
library(dplyr)
# You should have have access to the `vehicles` data.frame


# Create a data.frame of vehicles from 1997
cars1997 <- filter(vehicles, year == 1997)

# Use the `unique` function to verify that there is only 1 value in the `year` column of your new data.frame
length(unique(cars1997$year)) == 1

# Create a data.frame of 2-Wheel Drive vehicles that get more than 20 miles/gallon in the city
two.wheel.good.mileage <- filter(cars1997, drive != "4-Wheel or All-Wheel Drive", drive != "4-Wheel Drive", drive != "4-Wheel Drive", hwy > 20)

# Of those vehicles, what is the vehicle ID of the vehicle with the worst hwy mpg?
id.worst.hwy <- select(filter(two.wheel.good.mileage, hwy == min(hwy)), id)

# Write a function that takes a `year` and a `make` as parameters, and returns 
# The vehicle that gets the most hwy miles/gallon of vehicles of that make in that year


# What was the most efficient honda model of 1995?


