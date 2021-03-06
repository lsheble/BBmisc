% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coalesce.R
\name{coalesce}
\alias{coalesce}
\title{Returns first non-missing, non-null argument.}
\usage{
coalesce(...)
}
\arguments{
\item{...}{[any]\cr
Arguments.}
}
\value{
[any].
}
\description{
Returns first non-missing, non-null argument, otherwise \code{NULL}.

We have to perform some pretty weird \code{\link{tryCatch}} stuff internally,
so you should better not pass complex function calls into the arguments that can throw exceptions,
as these will be completely muffled, and return \code{NULL} in the end.
}
\examples{
f = function(x,y) {
  print(coalesce(NULL, x, y))
}
f(y = 3)
}
