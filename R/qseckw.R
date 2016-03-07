# qseckw
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

qseckw<-function(p,a,b,c,beta,lambda,lower = T,log.p = FALSE){
  require(pracma)
  if (lower == T){
    y=asec(2-p)
    (-1/lambda)*(log(1-(1-(1-((3/pi)*y)^(1/beta))^(1/b))^(1/a)))^(1/c)
  }else{
    y=asec(p)
    (-1/lambda)*(log(1-(1-(1-((3/pi)*y)^(1/beta))^(1/b))^(1/a)))^(1/c)
  }
}
