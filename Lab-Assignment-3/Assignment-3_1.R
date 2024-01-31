
#POLLUTANT DATASET----
df <- read.csv("pollutant_csv.csv")

#Printing data-frame to check
df

#mean of “Temp” when “Month” is equal to 6----
M <- mean(df$Temp[df$Month == 6])
cat("\n Mean of temperature for Month 6 is: ",M)

#How many observations are there in the given data?----
cat("\n Number of rows in dataset is: ", nrow(df))

#Print last 2 rows----
print(tail(df,2))

#Printing ozone value in 47 row----
cat("\n Number of rows in dataset is: ", df$Ozone[47])


# mean of Ozone column excluding missing values?----
#to check if values in df are empty or not
print(is.na(df))
#Checking null values in ozone value
print(sum(is.na(df$Ozone)))
# mean of Ozone column excluding missing values?
print(mean(df$Ozone,na.rm = T))
cat("\nmean of Ozone column excluding missing values: ",mean(df$Ozone,na.rm = T))



# subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90.----
subset_df <- subset(df, Ozone > 31 & Temp > 90)

# mean of Solar.R in this subset
mean(subset_df$Solar.R)

# maximum ozone value in the month of May----
cat("\nmaximum ozone value in the month of May: ",max(df$Ozone[which(df$Month == 5)],na.rm = T))
     

dslabs::admissions
