\name{getMaxIndex}
\alias{getMaxIndex}
\alias{getMinIndex}
\title{Return index of maximal/minimal element in numerical vector.}
\usage{
  getMaxIndex(x, ties.method = "random", na.rm = FALSE)

  getMinIndex(x, ties.method = "random", na.rm = FALSE)
}
\arguments{
  \item{x}{[\code{numeric}]\cr Input vector.}

  \item{ties.method}{[\code{character(1)}]\cr How should
  ties be handled?  Possible are: \dQuote{random},
  \dQuote{first}, \dQuote{last}.  Default is
  \dQuote{random}.}

  \item{na.rm}{[\code{logical(1)}]\cr If \code{FALSE}, NA
  is returned if an NA is encountered in \code{x}.  If
  \code{TRUE}, NAs are disregarded.  Default is
  \code{FALSE}}
}
\value{
  [\code{integer(1)}].
}
\description{
  If \code{x} is empty or only contains NAs which are to be
  removed, -1 is returned.
}
