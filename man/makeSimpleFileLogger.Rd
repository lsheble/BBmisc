% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/makeSimpleFileLogger.R
\name{makeSimpleFileLogger}
\alias{makeSimpleFileLogger}
\alias{SimpleFileLogger}
\title{Simple logger which outputs to a file.}
\usage{
makeSimpleFileLogger(logfile, touch = FALSE, keep = 10L)
}
\arguments{
\item{logfile}{[\code{character(1)}]\cr
File to log to.}

\item{touch}{[\code{logical(1)}]\cr
Should the file be created before the first log message?
Default is \code{FALSE}.}

\item{keep}{[\code{integer(1)}]\cr
Number of log messages to keep in memory for quick access.
Default is \code{10}.}
}
\value{
[\code{\link{SimpleFileLogger}}]. A list with following functions:
  \item{log [\code{function(msg)}]}{Send log message.}
  \item{getMessages [\code{function(n)}]}{Get last \code{n} log messages.}
  \item{clear [\code{function()}]}{Resets logger and deletes log file.}
  \item{getSize [\code{function()}]}{Returns the number of logs written.}
  \item{getLogfile [\code{function()}]}{Returns the full file name logs are written to.}
}
\description{
Creates a simple file logger closure to log to a file, including time stamps.
An optional buffer holds the last few log messages.
}
