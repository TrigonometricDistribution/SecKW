# pseckw
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

pseckw<-function(q,a,b,c,lambda,lower = T,log.p = FALSE){
  library(pracma)
  if (lower == T) {
    (sec((pi/3)*(1-(1-(1-exp(-(lambda*q)^(c))^(a))^(b))))-1)
  }else{
    (2-sec((pi/3)*(1-(1-(1-exp(-(lambda*q)^(c))^(a))^(b)))))
  }

}
