#dyn.load("moveCars.so")
#  is.loaded()
# useDynLib in NAMESPACE
#
#  R CMD COMPILE fib.c
#
CmoveCars=function(BML){
temp<-.C("RmoveCars",as.integer(BML[[1]]$x),as.integer(BML[[1]]$y),as.integer(BML[[1]]$car),as.integer(t),as.integer(nrow(BML[[1]])),as.integer(BML[[2]]),as.integer(BML[[3]]),integer(3*nrow(BML[[1]])),val=integer(3*nrow(BML[[1]])))$val
matrix(temp,ncol=3,byrow=TRUE)
}

changeBML=function(BML){
temp<-.C("RmoveCars",as.integer(BML[[1]]$x),as.integer(BML[[1]]$y),as.integer(BML[[1]]$car),as.integer(nrow(BML[[1]])),integer(3*nrow(BML[[1]])),val=integer(3*nrow(BML[[1]])))$val
matrix(temp,ncol=3,byrow=TRUE)
}

RmoveCars(int *x, int *y, int *car, int *n, int *result, int *ans)