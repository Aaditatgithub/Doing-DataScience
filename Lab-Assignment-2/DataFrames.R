
match_stat <- data.frame(Name = c("Tendulkar","Ponting","Kallis","Dravid","Cook"),Matches= c(200,168,166,164,161))

#$ is used to access columns 
match_stat$Innings = c(329,287,280,286,291)
match_stat$HighestScore= c(248,257,224,270,294)
match_stat$Average= c(53.78,51.85,55.37,52.31,45.35)
match_stat

#structure of dataframe
str(match_stat)

#type of var
class(match_stat)

summary(match_stat)

match_stat$Matches
match_stat$Average[3]
match_stat[3,2]
nrow(match_stat)    #number of rows

colnames(match_stat)

#head(var_name,n) display first n rows of a dataframe
head(match_stat,2)

#display multiple rows and cols
match_stat[c(2,3),c(3,4)]

#all rows and colnum given
match_stat[,3]

match_stat[5,]

match_stat$half_cent = c(68,62,58,63,57)
match_stat

#Adding new row(s) to a DataFrame using rbind
df = data.frame(Name = c("Sangakara","Lara"),
                Matches = c(134,131),
                Innings = c(233,232),
                HighestScore = c(319,400),
                Average = c(57.40,52.80),
                half_cent = c(52,48))
match_stat <- rbind(match_stat,df)

# highest score of Tendulkar
index_of_Tendulkar<- which(match_stat$Name == "Tendulkar")
match_stat[index_of_Tendulkar,4]

#player with max average
print(match_stat[which.max(match_stat$HghestScore),c(1,5)])

#Players with highest score above 250
print(match_stat[(match_stat$HighestScore > 250),c(1:3,5)])

#. Find the row number of the data for which the highestscore is equal or greater than 270
which(match_stat$HighestScore >= 270)

#Modify Tendulkar’s number of matches as 201.
match_stat[which(match_stat$Name=="Tendulkar"),2] = 201
match_statz

