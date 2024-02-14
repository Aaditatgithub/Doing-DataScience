#Pollutant data----
f <- read.csv("pollutant_csv.csv")
m <- mean(f$Temp[f$Month == 6])
cat("\nMean of temperature when month is 6: ",m)

n <- nrow(f)
cat("\nNo. of observations are: ",n)
t <- tail(f,2)
print(t)

oz <- f$Ozone[47]
cat("\nThe value of ozone at 47 row is: ",oz)

nas <- sum(is.na(f$Ozone))
cat("\nThe number of missing values is: ",nas)

me <- mean(f$Ozone,na.rm = T)
cat("\nThe mean of ozone values not counting the missing values: ",me)

ms <- mean(f$Solar.R[f$Ozone > 31 & f$Temp > 90],na.rm = T)
cat("\nThe subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90 are: ",ms)

mx <- max(f$Ozone[f$Month == 5],na.rm = T)
cat("\nThe maximum ozone value in the month of May: ",mx)

#hair eye color Data set----
f1 <- read.csv("hair_eye_color_csv.csv")
n <- nrow(f1)
b <- sum(f1$Eye.Color == "Brown")
cat("\nThe number of people with brown eyes are: ",b)

h <- sum(f1$Hair.Color == "Blonde")
cat("\nThe number of people with blonde hair: ",h)

bh_be <- sum(f1$Hair.Color == "Brown" & f1$Eye.Color == "Black")
cat("\nThe people with brown hair with black eyes are: ",bh_be)

g <- sum(f1$Eye.Color == "Green")*100/n
cat("\nthe percentage of people with green eyes: ",g,"%")

r <- sum(f1$Hair.Color == "Red" & f1$Eye.Color == "Blue")*100/n
cat("\npercentage of people with red hair color and blue eyes: ",r,"%")

#germination----
f2 <- read.csv("germination_csv.csv")
n1 <- sum(f2$water_amt == 4 & f2$Box == "Uncovered")
avg_seed <- sum(f2$germinated[f2$Box == "Uncovered" & f2$water_amt == 4])/n1
cat("The average of germinated seeds: ",avg_seed)

h <- median(f2$germinated[f2$Box=="Covered"])
cat("\nThe median value for the data covered boxes=",h)

#boxplot----
library(ggplot2)
p <- ggplot(iris,aes(Sepal.Length,Species,fill=Species)) + geom_boxplot(outlier.shape = 4,outlier.size=3,outlier.color = "red") + theme(legend.position="none") + labs(title = "BOXPLOT",x="Sepal Length",y="Species") + coord_flip()
print(p)

#scatterplot----
library(dslabs)
g <- ggplot(murders,aes(population/10^6,total)) + geom_point(aes(col=region)) + scale_x_log10() + scale_y_log10() + geom_text(aes(label=abb),size=3,nudge_x = 0.02) + labs(title = "SCATTERPLOT",x="POPULATION",y="TOTAL")
g