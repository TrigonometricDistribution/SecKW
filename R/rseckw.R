# rseckw
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

rseckw<-function(n,a,b,c,beta,lambda){
  require(pracma)
  y=asec(1+0.999999999)
  limsup = (-1/lambda)*(log(1-(1-(1-((3/pi)*y)^(1/beta))^(1/b))^(1/a)))^(1/c)
  accept = c()
  count = 0
  while (length(accept) < n){
    u = runif(1,0,limsup)
    x = runif(1,0,limsup)
    if(dunif(x, 0, limsup)*u <= dseckw(x,a,b,c,beta,lambda)) {
      accept[count] = x
      count = count + 1
    }
  }
  return(accept)
}
