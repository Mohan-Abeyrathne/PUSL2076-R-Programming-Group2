library(tidyverse)
library(ggplot2)

raw_data <- read.csv("data/ecommerce_churn_raw.csv")

view(raw_data)

# plot1:distribution check for age
p1 <- ggplot(raw_data, aes(x = Age)) +
  geom_histogram(bins = 30, fill = "steelblue", color = "black") +
  labs(title = "Raw Data Distribution: Age",
       subtitle = "Checking for logical anomalies(negative or unrealistic ages)",
       x = "Age", 
       y = "Count")

print(p1)

# plot2: target Variable(churn) distribution
p2 <- ggplot(raw_data, aes(x = as.factor(Churn))) +
  geom_bar() +
  labs(
    title = "Raw Data: Customer Churn",
    subtitle = "Target variable distribution",
    x = "Churn status (0 = Retained, 1 = Churned)", 
    y = "Customer count"
  )
print(p2)

#plot3: distribution check for days since last login
p3 <- ggplot(raw_data, aes(x = Days_Since_Last_Login)) +
  geom_histogram(bins = 10, fill = "yellow", color = "black") +
  labs(
    title = "Raw Data Distribution: Days Since Last Login",
    subtitle = "Checking for logical anomalies(negative values)",
    x = "Days Since Last Login", 
    y = "Count"
  )

print(p3)