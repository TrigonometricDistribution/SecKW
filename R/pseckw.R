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

pseckw<-function(q,a,b,c,lambda,lower = TRUE,log.p = FALSE){
  library(pracma)

  if (log.p == TRUE) {
    if (lower == TRUE) {
      log((sec((pi/3)*(1-(1-(1-exp(-(lambda*q)^(c))^(a))^(b))))-1))
    }else{
      log((2-sec((pi/3)*(1-(1-(1-exp(-(lambda*q)^(c))^(a))^(b))))))
    }
  } else {
    if (lower == TRUE) {
      (sec((pi/3)*(1-(1-(1-exp(-(lambda*q)^(c))^(a))^(b))))-1)
    }else{
      (2-sec((pi/3)*(1-(1-(1-exp(-(lambda*q)^(c))^(a))^(b)))))
    }
  }

}
