setwd("C:/Work/Coding/Data-Science/Submission3")
#QUESTION 1 ----

f<-read.csv("Hypothesis_csv1.csv")

#CASE 1(0.05)

m<-mean(f$Life_Hrs)
cat("\nQuestion 1:\n\nmean is :",m)

sd1<-sd(f$Life_Hrs)
cat("\nStandard deviation is :",sd1)

se<-sd1/sqrt(50)
cat("\nstandard error is :",se)



p1<-pnorm(m,10000,se)
cat("\nprobability is :",p1)

if(p1<0.05)
{
  cat("\nClaim can be rejected for 0.05")
}else
{
  cat("\nClaim cannot be rejected for 0.05")
}

#CASE 2(0.01)

if(p1<0.01)
{
  cat("\nClaim can be rejected for 0.01")
}else
{
  cat("\nClaim cannot be rejected for 0.01")
}




#QUESTION 2 ----
#cASE 1 (0.05)

se2<-17/sqrt(35)

p2<-pnorm(134,130,se2, lower.tail =F)*2
cat("\n\nQuestion 2:\n\nprobability is :",p2)

if(p2<0.05)
{
  cat("\nNull hypothesis can be rejected for 0.05 ")
}else
{
  cat("\nNull hypothesis cannot be rejected for 0.05 ")
}

#CASE 2(0.01)

if(p2<0.01)
{
  cat("\nNull hypothesis can be rejected for 0.01 ")
}else
{
  cat("\nNull hypothesis cannot be rejected for 0.01 ")
}
