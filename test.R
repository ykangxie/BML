dyn.load("moveCars.so")
x = c(2,2,2,3);
y = c(3,2,4,4);
car = c(1,1,2,1);
n  = 4;

changeBML=function(x,y,car,n){
  temp<-.C("RmoveCars",as.integer(x),as.integer(y),as.integer(car),as.integer(n), val=integer(3*n))$val
  matrix(temp,ncol=3,byrow=TRUE)
}

