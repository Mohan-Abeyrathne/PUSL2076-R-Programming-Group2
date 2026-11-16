library(tidyverse)

raw_data<-read.csv("data/ecommerce_churn_raw.csv")

#summary of data
view(raw_data)
print(dim(raw_data))
head(raw_data)
tail(raw_data)

str(raw_data)

colnames(raw_data)

#check the data inside the dataset for cleaning

print(colSums(is.na(raw_data)))

total_duplicates<-sum(duplicated(raw_data))
print(total_duplicates)

summary(raw_data)