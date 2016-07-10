\name{SecKW}
\alias{SecKW}
\alias{dseckw}
\alias{pseckw}
\alias{qseckw}
\alias{rseckw}
\alias{sseckw}
\title{
The SecKW Distribution
}
\description{
Density, distribution function, quantile function, random generation and survival function for the sine weibull inverse distribution with.
}
\usage{
dseckw(x, a, b, c, beta, lambda)
pseckw(q, a, b, c, beta, lambda, lower = T, log.p = FALSE)
qseckw(p, a, b, c, beta, lambda, lower = T, log.p = FALSE)
rseckw(n, a, b, c, beta, lambda)
sseckw(x, a, b, c, beta, lambda)
}
\arguments{
  \item{x, q}{
  vector of quantiles.
}
  \item{p}{
  vector of probabilities.
  }
  \item{n}{
  number of observations. If length(n) > 1, the length is taken to be the number required.
  }
  \item{a, b, c, beta, lambda}{
  parameters.
  }
  \item{log.p}{
  logical; if TRUE, probabilities p are given as log(p).
  }
  \item{lower}{
  logical; if TRUE (default), probabilities are P[X ≤ x], otherwise, P[X > x].
  }
}
\details{
Detalhes.
}
\value{
dseckw gives the density, pseckw gives the distribution function, qseckw gives the quantile function, rseckw generates random deviates and sseckw gives the survival function.

The length of the result is determined by n for rseckw, and is the maximum of the lengths of the numerical arguments for the other functions.

The numerical arguments other than n are recycled to the length of the result.
}
\references{
SOUZA, L. New Trigonometric Class of Probabilistic Distributions. 219 p. Thesis (Doctorate in Biometry and Applied Statistics) - Department of Statistics and Information, Federal Rural University of Pernambuco, Recife, Pernambuco, 2015.

BRITO, C. C. R. Method Distributions generator and Probability Distributions Classes. 241 p. Thesis (Doctorate in Biometry and Applied Statistics) - Department of Statistics and Information, Federal Rural University of Pernambuco, Recife, Pernambuco, 2014.
}
\author{
Dr. Luciano Souza, Luciano Serafim de Souza and Ms. Lucas Gallindo.
}
\seealso{
The \href{http://artax.karlin.mff.cuni.cz/r-help/library/VGAM/html/kumar.html}{kumaraswamy} distribution.

The \href{https://stat.ethz.ch/R-manual/R-devel/library/stats/html/Weibull.html}{weibull} distribution.
}
\examples{
x = rseckw(1000,1,1,1,1)
hist(x,probability = T,border = 0,ylim = c(0,1),xlim = c(0,5),main = "",ylab = "Density",lty = 2,lwd=2)
curve(dseckw(x,1,1,1,1),add = T,lty=1,lwd=2,col=1)
