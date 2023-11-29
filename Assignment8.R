#PART1
#(a)
data=read.csv(file.choose())
#(b)
dim(data)
head(data,10)
#(c)
mean(data$Wall.Thickness)
#to plot a histogram
hist(data$Wall.Thickness,xlab = 'x axis')
#(d) 
#abline function is used to mark the mean
abline(v=12.8,col='red')


#PART2
#(a)
s10=c()
n=9000
for(i in 1:n){
  s10[i]=mean(sample(data$Wall.Thickness,10,replace=TRUE))
}
hist(s10,col='red')
abline(v=mean(s10),col='blue')
abline(v=12.8,col='pink')

#(b)
s50=c()
n=9000
for(i in 1:n){
  s50[i]=mean(sample(data$Wall.Thickness,50,replace = TRUE))
}
hist(s50,col="green")
abline(v=mean(s50),col='blue')
abline(v=12.8,col='pink')

s500=c()
n=9000
for(i in 1:n){
  s500[i]=mean(sample(data$Wall.Thickness,500,replace = TRUE))
}
hist(s500,col="green")
abline(v=mean(s500),col='blue')
abline(v=12.8,col='pink')

s9000=c()
n=9000
for(i in 1:n){
  s9000[i]=mean(sample(data$Wall.Thickness,9000,replace = TRUE))
}
hist(s9000,col="green")
abline(v=mean(s9000),col='blue')
abline(v=12.8,col='pink')
