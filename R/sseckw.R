#' The survival function of the SecantKumaraswamyWeibull probability distribution.
#' @export
#'
#' @param x Vector of quantiles.
#' @param a A parameter.
#' @param b B parameter.
#' @param c C parameter.
#' @param lambda Lambda parameter.
#' @return A vector with n observations of the SecantKumaraswamyWeibull distribution.
#' @examples
#' sseckw(x,1,1,1,1)
#' sseckw(x,3,0.5,2,2)

sseckw <- function(x,a,b,c,lambda){
  (2-sec((pi/3)*(1-(1-(1-exp(-(lambda*x)^(c))^(a))^(b)))))
}
