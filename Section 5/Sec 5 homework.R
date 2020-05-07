
#reading data from csv
data1 <- read.csv("P2-Section5-Homework-Data.csv")
head(data1)

#seperating 2 years data using filtering
data1960 <- data1[data1$Year == "1960",]
data1960
data1
data2013<- data1[data1$Year == "2013",]
head(data2013)

#Creating life expectancy data frames using vectors given
datale1960 <- data.frame(Code = Country_Code, Life.Exp = Life_Expectancy_At_Birth_1960)
datale2013 <- data.frame(Code = Country_Code, Life.Exp = Life_Expectancy_At_Birth_2013)

#Merging dataframes into 2 year wise dataframes
report.1960 <- merge(data1960,datale1960, by.x = "Country.Code", by.y = "Code")
head(report.1960)

report.2013 <- merge(data2013,datale2013, by.x = "Country.Code", by.y = "Code")
head(report.1960)

#Plotting the graphs
 #1960
qplot(data=report.1960, x = Fertility.Rate, y = Life.Exp, colour = Region, size = I(3))
 #2013
qplot(data=report.2013, x = Fertility.Rate, y = Life.Exp, colour = Region, size = I(3))
