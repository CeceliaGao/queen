ls()
AQI <- 69
# If this condition is TRUE
if (AQI <= 50) { 
  # Do the following
  "Air Quality is Excellent"
}

x  <-  4 == 3
if (x) {
  "4 equals 3"
} else {
  "4 does not equal 3" 
}

x  <-  4 == 4
if (x) {
  "4 equals 4"
} else {
  "4 does not equal 4" 
}

Forecast_List <- c(28, 27, 28, 26, 27)
##Here c() means “combine”:
  print(Forecast_List)
## [1] 28 27 28 26 27

Forecast_List <- c(28, 27, 28, 26, 27)
Daily_T <- 28 
for (X in Forecast_List) { # If this condition is TRUE
#     # Do following
    print(X)
  }
# End of the for loop
  ## [1] 28
  ## [1] 27
  ## [1] 28
  ## [1] 26
  ## [1] 25

# Exercise 1
getwd()

setwd("C:/ESE5023")

#Exercise 2
X1  <- 50
X2  <- 120
X3  <- X2 * 2.0
X4  <- X1 - 20
X5  <- X1 > X2

X6<- X3 < X4
if(X6){
  "X4 is lager than X3"
}else{"X3 is larger than X4"
}

rm(X1,X2,X3)

# Exercise 3
score<- runif(1,0,100)
print (score)
if (score>=90){print ("Excellent")
}else if(score>=60){print ("Good")
}else{print("Pass")
}
start(x,...elt())
j<- runif(1,0,100)
m<- runif(1,0,100)
PRINTF("%d<%d\n",j,m)
if(j<m){end
}else{
  
}??????????

#Exercise 4
totalStudents<-40
score<- runif(totalStudents,0,100)
passStudents<-0
higher_than_90<-0
lower_than_30<-0

for(whatever in score){
  if(whatever>=60){
    passStudents<- passStudents+1
  }
  if(whatever>90){
    higher_than_90<- higher_than_90+1
  }
  if(whatever<30){
    lower_than_30<- lower_than_30+1
  }
}
print(score)
print("How many students pass:")
print(passStudents)
print("pass ration is:")
print(passStudents/totalStudents)
print("How many students have a score higher than 90")
print(higher_than_90)
print("How many students have a score lower than 30")
print(lower_than_30)


#Exercise 5
#function()里的argument指自变量
F<-c(32,100)
F2C<- function(F){
  C<-(F-32)*5/9}
  print(F2C(F))
  
?????
  
#Exercise 6
# Install the following packages: 
"*ggplot2
*plyr
*gapminder
*lubridate
Load lubridate package by typing library(lubridate)"
  
today()


#20200917
  
Keeling_Data <- read.csv(file = "co2_mm_mlo.csv", header = T)
colnames(Keeling_Data)
head(Keeling_Data)
tail(Keeling_Data)
Keeling_Data$co2

# Min
min(Keeling_Data$co2)
max(Keeling_Data$co2)
range(Keeling_Data$co2)
mean(Keeling_Data$co2)
median(Keeling_Data$co2)
#show 直方图
hist(Keeling_Data$co2)
#show 分位数
summary(Keeling_Data$co2)

Keeling_Data$co2[1:10]
Keeling_Data$year[200:213]

Keeling_Data$co2[0]

plot(Keeling_Data$decimal_date,Keeling_Data$co2,ylim=c(300,420),type="l")

#In fact, we should never use data points with a value of -99.99 (quality=0). One good way to do so is to set those values to NA (Not Available) or Missing Values.
#Here we use which() function to return the indexes of elements equal to -99.99. Use type="l" to plot a line, type="p" for points, and type="o" for points + line.
Year     <- Keeling_Data$decimal_date
CO2_ppm  <- Keeling_Data$co2 
CO2_ppm[which(CO2_ppm == -99.99)]  <- NA
plot(Year, CO2_ppm, type="o")

plot(Year, CO2_ppm, type="l")

#Important: Always use the na.rm=T opintion to handle vectors containing NA values.
mean(CO2_ppm)
## [1] NA
mean(CO2_ppm, na.rm=T)


Keeling_Data$co2[1:10] * 1e3
  
Keeling_Data$month[1:10] + Keeling_Data$co2[1:10]
#The above line won’t work as Keeling_Data$month and Keeling_Data$co2 has different data types.

typeof(Keeling_Data$co2)

x <- 1 <= 2
typeof(x)
## [1] "logical"
typeof(1+1i)
## [1] "complex"
typeof(Keeling_Data$quality)


class(Keeling_Data)

vector_1 <- vector(length = 3)
vector_1
## [1] FALSE FALSE FALSE

vector_2 <- vector(mode='character', length=4)
vector_2
## [1] "" "" ""

str(vector_1)
#vector定义里只要有一个是character， 就全部是character
vector_4 <- c(1,2,3,"4")
vector_4 <- c(1,2,3,4)
vector_4
str(vector_4)
## [1] "1" "2" "3" "4"

Keeling_Data$month <- factor(Keeling_Data$month)
class(Keeling_Data$month)
## [1] "factor"
str(Keeling_Data$month)
##  Factor w/ 12 levels "April","August",..: 8 1 9 7 6 2 12 11 10 3 ...

Keeling_Data[,2]

str(Keeling_Data[1,])



# exercise 1
Keeling_Data[2]
Keeling_Data[[2]]
Keeling_Data$month
Keeling_Data["month"]
Keeling_Data[2, 2]
Keeling_Data[, 2]
Keeling_Data[2, ]



matrix_1 <- matrix(1:50, nrow=10, ncol=5)
matrix_1


##lab01

#1
vector_3 <- c(1,2,3,4)

combinations(4, 2, v=1:4, set=TRUE, repeats.allowed=FALSE)
permutations(n, r, v=1:n, set=TRUE, repeats.allowed=FALSE)

combinations(4, 2, v=c("red","blue","green","black"), set=TRUE, repeats.allowed=FALSE)
permutations(4, 2, v=c("red","blue","green","black"), set=TRUE, repeats.allowed=FALSE)

Keeling_Data <- read.csv(file = "co2_mm_mlo.csv", header = T)

#2
year_list<- (1959:2020)
mean_co2<-function(co2){
  for(Keeling_Data&year in year_list){
    annual_co2<- mean(Keeling_Data&co2)
  }
}

data_year<-Keeling_Data$year 
data_co2<-Keeling_Data$co2
data_month<-Keeling_Data$month

data_co2[which(data_co2==-99.99)]<-NA

annual_year_co2<-c()

for(iyear in unique(data_year)){
  this_year<-which(data_year==iyear)
  this_year_mean_co2<- mean(data_co2[this_year], na.rm=T)
  annual_year_co2<-c(annual_year_co2,this_year_mean_co2)
}
plot(seq(1958,2020,1),annual_year_co2,type="l", xlab="Year",ylab="CO2 [ppm]")


co2_annual_growth<- c()

for(iyear in 1959:2019){
  co2_Jan<-NA
  co2_Dec<-NA

this_year<-which(data_year==iyear)
for(imonth in this_year){
  if (data_month[imonth]=="January"){
    co2_Jan<- data_co2[imonth]  }
  if(data_month[imonth]=="December"){
    co2_Dec<-data_co2[imonth]
  }
  if (!is.na(co2_Jan)&!is.na(co2_Dec)){
    co2_annual_growth<-c(co2_annual_growth, co2_Dec-co2_Jan)
  }
}
}
plot(co2_annual_growth,type="l",xlab="year", ylab="growth ratio[ppm/year]")
abline(h=0, lty=2, col="red")
  
# Define the function FindTop()
FindTop        <- function(N){
  MoviePage  <- readLines('https://movie.douban.com/top250', encoding='UTF-8')
  Pattarn    <- '<span class=\"title\">&nbsp;/&nbsp;([^<]*)</span>'
  Lines      <- grep(Pattarn, MoviePage, value=TRUE)
  Lines      <- sub(Pattarn,  '\\1', Lines )
  Names      <- sub('^ *', '', Lines)
  Names      <- sub('&#39;', "'", Names)
  print(Names[1:N])
}
# Call the function with arguement 5 and 10
FindTop(5)
FindTop(10)

#JUST for a test of GitKraken