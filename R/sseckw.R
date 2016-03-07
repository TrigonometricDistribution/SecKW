# sseckw
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

sseckw <- function(x,a,b,c,lambda){
  (2-sec((pi/3)*(1-(1-(1-exp(-(lambda*x)^(c))^(a))^(b)))))
}
