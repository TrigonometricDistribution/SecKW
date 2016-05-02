\name{SecKW}
\alias{SecKW}
\alias{dseckw}
\alias{pseckw}
\alias{qseckw}
\alias{rseckw}
\alias{sseckw}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
The SecKW Distribution
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Density, distribution function, quantile function, random generation and survival function for the sine weibull inverse distribution with.
}
\usage{
dseckw(x, a, b, c, beta, lambda)
pseckw(q, a, b, c, beta, lambda, lower = T, log.p = FALSE)
qseckw(p, a, b, c, beta, lambda, lower = T, log.p = FALSE)
rseckw(n, a, b, c, beta, lambda)
sseckw(x, a, b, c, beta, lambda)
}
%- maybe also 'usage' for other objects documented here.
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
%%  ~~ If necessary, more details than the description above ~~
Detalhes.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
dseckw gives the density, pseckw gives the distribution function, qseckw gives the quantile function, rseckw generates random deviates and sseckw gives the survival function.

The length of the result is determined by n for rseckw, and is the maximum of the lengths of the numerical arguments for the other functions.

The numerical arguments other than n are recycled to the length of the result.
}
\references{
%% ~put references to the literature/web site here ~
Referencias.
}
\author{
%%  ~~who you are~~
Autores.
}
\note{
%%  ~~further notes~~
Nota.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
Ajuda.
}
\examples{
## The function is currently defined as
x = rseckw(100,1,1,1,1,1)
hist(x,probability=TRUE,ylim = c(0,.5))
curve(dseckw(x,1,1,1,1,1),add=TRUE)
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
