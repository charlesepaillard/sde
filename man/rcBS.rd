\name{rcOU}
\alias{rcOU}
\alias{dcOU}
\alias{pcOU}
\alias{qcOU}
\title{Ornstein-Uhlenbeck or Vasicek process conditional law}
\description{Density, distribution function, quantile function and 
random generation for the conditional law Xt|X0=x0 of the Ornstein-Uhlenbeck process
also known as Vasicek process}
\usage{
dcOU(x, t, x0, theta, log = FALSE)
pcOU(x, t, x0, theta, lower.tail = TRUE, log.p = FALSE) 
qcOU(p, t, x0, theta, lower.tail = TRUE, log.p = FALSE)
rcOU(n=1, t, x0, theta)
}
\arguments{
  \item{x}{vector of quantiles.}
  \item{p}{vector of probabilities.}
  \item{t}{lag or time}
  \item{x0}{the value of the process at time \code{t=0}. See details.}
  \item{theta}{parameter of the Ornstein-Uhlenbeck process. See details.}
  \item{n}{number of random numbers to generate from the conditional distribution.}
  \item{log, log.p}{logical; if TRUE, probabilities p are given as log(p).}
  \item{lower.tail}{logical; if TRUE (default), probabilities are P[X <= x], 
  otherwise, P[X > x].}
}
\details{
This function returns quantities related to the conditional law
of the process solution of
\code{dX_t = theta[1]*(theta[2] - Xt)*dt + theta[3]*dWt}.

Constraints: \code{theta[1]>0, theta[3]>0}.

Please note that the process is stationary only if \code{theta[1]>0}.
}
\value{
  \item{x}{a numeric vector}
}
\references{Uhlenbeck, G. E.,  Ornstein, L. S. (1930) On the theory of Brownian motion, 
\emph{Phys. Rev.}, 36, 823-841.

Vasicek, O. (1977) An Equilibrium Characterization of the Term 
Structure, \emph{Journal of Financial Economics},  5, 177-188. }
\author{Stefano Maria Iacus}
\note{This package is a companion to the book \emph{Simulation and Inference
for Stochastic Differential Equation}, Springer, NY.
}
\seealso{\code{\link{rsOU}}}
\examples{
rcOU(n=1, t=0.1, x0=1, theta=c(2,0,1))
}
\keyword{datagen}
\keyword{ts}
