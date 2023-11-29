#Q1
#(i) #method 1
ans=1-punif(45,0,60)
ans
#method2
ans=punif(45,0,60,lower.tail = FALSE)
ans

#(ii)
ans=punif(30,0,60)-punif(20,0,60)
ans

#Q2
#(a)
ans=dexp(3,1/2)
ans
#(b)
x<-seq(0,5,0.04)
y<-dexp(x,1/2)
plot(x,y,xlab='x',ylab='y')
#(c)
ans=pexp(3,1/2)
ans

#(d)
x<-seq(0,5,0.04)
y<-pexp(x,1/2)
plot(x,y,xlab='x',ylab='y')

#(e)
n=1000
sim=rexp(n,1/2) #rexp is used for random 
plot(density(sim),xlab='x',ylab='y') #density draws a smooth curve
#plot(sim,xlab='x',ylab='y')

#Q3
#(a)
alpha=2
beta=1/3
ans=pgamma(1,shape=alpha,scale=beta,lower.tail = FALSE)
ans
#(b)
ans=qgamma(0.70,shape=alpha,scale=beta)
ans