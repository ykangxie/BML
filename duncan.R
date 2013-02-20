setwd("./Desktop/CProgramming")
dyn.load("Rfib.so")
source("fib.R")

fibonacci(10)
fibonacci(40)


#
rm *.o *.so
R CMD SHLIB Rfib.c fib.c

#############################
library("YKBML")
setwd("../")
setwd("./Desktop/moveCars")
dyn.load("RmoveCars.so")
source("moveCars.R")

BML<-simCars(0.4,10,10)
changeBML(BML)


#############

x = c(2,2,2,3);
y = c(3,2,4,4);
car = c(1,1,2,1);
n  = 4;
t = 1; ////set time
r = 6;
c = 8;

changeBML=function(x,y,car,n){
  temp<-.C("RmoveCars",as.integer(x),as.integer(y),as.integer(car),as.integer(n),integer(3*n),val=integer(3*n))$val
  matrix(temp,ncol=3,byrow=TRUE)
}

changeBML=function(x,y,car,n){
  temp<-.C("RmoveCars",as.integer(x),as.integer(y),as.integer(car),as.integer(n),integer(3*n),val=integer(3*n))$val
  matrix(temp,ncol=3,byrow=TRUE)
}

######################
x = as.integer(c(2,2,2,3));
y = as.integer(c(3,2,4,4));
car = as.integer(c(1,1,2,1));
n<-as.integer(4)
result<-integer(3*n)

changeBML=function(x,y,car,n,result){
  temp<-.C("RmoveCars",x,y,car,n,result,val=integer(3*n))$val
  matrix(temp,ncol=3,byrow=TRUE)
}


changeBML(x,y,car,n,result)