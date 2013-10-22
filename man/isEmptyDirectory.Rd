\name{isEmptyDirectory}
\alias{isEmptyDirectory}
\title{Is one / are several directories empty?}
\usage{
  isEmptyDirectory(...)
}
\arguments{
  \item{...}{[\code{character(1)}]\cr Directory names, all
  strings.}
}
\value{
  [\code{logical}].
}
\description{
  If file does not exist or is not a directory,
  \code{FALSE} is returned.
}
\examples{
print(isEmptyDirectory(tempdir()))
print(isEmptyDirectory(tempfile()))
}
