library(tidyverse)
library(OEKA201AssignmentARVID)
data <- data.frame(data)

model1 <- lm(math.score ~ reading.score, data=data)
summary(model1)

model2 <- lm(math.score ~ reading.score + writing.score, data=data)
summary(model2)

data$female <- ifelse(data$gender == "female", 1, 0)

model3 <- lm(math.score ~ reading.score + female, data=data)
summary(model3)

model4 <- lm(math.score ~ reading.score + I(reading.score^2), data=data)
summary(model4)


