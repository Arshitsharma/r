install.packages("pracma") #pracma is used for double integral
library("pracma")

#Q1
#(a)
f=function(x,y){2*(2*x+3*y)/5}
I=integral2(f,xmin=0,xmax=1,ymin=0,ymax=1)
I$Q
if(I$Q==1){
  print("yes,joint distributed function")
}
#(b)
f=function(x,y){2*(2*x+3*y)/5}
gx=function(y){f(1,y)}
margx=integral(gx,0,1)
margx
#(c)
f=function(x,y){2*(2*x+3*y)/5}
hy=function(x){f(x,0)}
margy=integral(hy,0,1)
margy
#(d)
f=function(x,y){x*y*2*(2*x+3*y)/5}
ex=integral2(f,0,1,0,1)
ex$Q

#Q2
#(a)
f=function(x,y){(x+y)/30}
x=c(0:3)
y=c(0:2)
M1=matrix(c(f(0,0:2),f(1,0:2),f(2,0:2),f(3,0:2)),nrow=4,ncol=3,byrow=TRUE)
M1
#(b)
sum(M1)
#(c)
#for row use 1, for column use 2 here row is x and column is y
gx=apply(M1,1,sum)
gx
#(d)
hy=apply(M1,2,sum)
hy
#(e)
M1[1,2]/hy[2]
#(f)
x=c(0:3)
y=c(0:2)
ex=sum(x*gx)
ex
ey=sum(y*hy)
ey


varx=sum((x-ex)^2*gx)
varx
vary=sum((y-ey)^2*hy)
vary