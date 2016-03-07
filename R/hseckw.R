# hseckw
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

hseckw<-function(x,a,b,c,lambda){
  library(stats)
  library(pracma)
  (((pi/3)*(a*b*c*(lambda^(c))*(x^(c-1))*exp(-(lambda*x)^(c))*((1-exp(-(lambda*x))^(c))^(a-1))*(1-(1-exp(-(lambda*x))^(c))^(a))^(b-1)))*(sec((pi/3)*(1-(1-(exp(-(lambda*x)^(c)))^(a))^(b))))*(tan((pi/3)*(1-(1-(1-exp(-(lambda*x)^(c))^(a))^(b))))))/(sec((pi/3)*(1-(1-(1-exp(-(lambda*x)^(c))^(a))^(b))))-1)/(2-sec((pi/3)*(1-(1-(1-exp(-(lambda*x)^(c))^(a))^(b)))))
}
