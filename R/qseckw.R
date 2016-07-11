#' The cumulative function of the SecantKumaraswamyWeibull probability distribution.
#'
#' @param p Vector of probabilities.
#' @param a A parameter.
#' @param b B parameter.
#' @param c C parameter.
#' @param lambda Lambda parameter.
#' @return A vector with n observations of the SecantKumaraswamyWeibull distribution.
#' @examples
#' qseckw(p,1,1,1,TRUE,FALSE)
#' qseckw(p,3,0.5,2,TRUE,FALSE)

qseckw<-function(p,a,b,c,lambda,lower = TRUE,log.p = FALSE){

  if (log.p == TRUE) {
    if (lower == TRUE){
      y=asec(2-p)
      log((-1/lambda)*(log(1-(1-(1-((3/pi)*y))^(1/b))^(1/a)))^(1/c))
    }else{
      y=asec(p)
      log((-1/lambda)*(log(1-(1-(1-((3/pi)*y))^(1/b))^(1/a)))^(1/c))
    }
  } else {
    if (lower == TRUE){
      y=asec(2-p)
      (-1/lambda)*(log(1-(1-(1-((3/pi)*y))^(1/b))^(1/a)))^(1/c)
    }else{
      y=asec(p)
      (-1/lambda)*(log(1-(1-(1-((3/pi)*y))^(1/b))^(1/a)))^(1/c)
    }
  }

}
