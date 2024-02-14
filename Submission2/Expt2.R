f<-read.csv("travelledAbroad_csv.csv")

#1.	Find out the % of Indians in the sample who have travelled abroad using the data source
per<-100*(sum (f$Travelledabroad =="Y" ))/150
cat("Percentage of people travelled abroad :",per)

#2.	Treating this value as ‘p’, calculate the following probabilities –
p<-per/100
cat("\n\nProbalility of success :",p)

#a.	What is the probability that in a randomly chosen sample of 10 persons, no one has travelled abroad?
k<-0:10
d1<-dbinom(k,10,p)
cat("\n\nprobability for n = 10 by binomial distribution:",d1)

#3.	Plot the probability values as a Table / Bar graph/plot and interpret plot.
plot(k,d1,type ="l")

#4.	What is the probability that in the randomly chosen sample of 100 persons at least 59 have travelled abroad?  
#n = 100 in this case
k1<-59:100
d2<-dbinom(k1,100,p)
pbd1<-sum(d2)
cat("\n\nProbability per n =100 by binomial distribution :",pbd1)
d3<-dbinom(0:100,100,p)
plot(0:100,d3,type="l")

#for finding probability considering it as a normal distribution
#z = (observed value - mean value)/standard deviation

m<-100*p
sd1<-sqrt(100*p*(1-p))
cat("\n\nmean is :",m)
cat("\nstd dev is :",sd1)
pnorm(59,m,sd1)
pnd1<-pnorm(59,m,sd1, lower.tail = F)
cat("\n\nProbability for n = 100 by normal distribution :",pnd1)
