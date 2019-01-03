#insatall Package
install.packages("AnalyzeTS")
library(AnalyzeTS)
install.packages("rlang")
library(rlang)
install.packages("forecast")
library(forecast)

#Input Data
adisutjipto<- read.csv("file:///C:/Users/Indah Kurnianda/Documents/SEMESTER 5/ARW/TAKE HOME/wisman adisutjipto.csv", sep = ";")
adisutjipto

#Membuat Data Time Series
adisutjipto.ts<- ts(adisutjipto$adisutjipto, start= c(2014,1), frequency = 12)
adisutjipto.ts

#Prediksi
Prediksi=Gfuzzy.ts1(adisutjipto.ts, D1=35, D2=14, n=7, type="Chen", plot=TRUE, grid=TRUE)
Prediksi
