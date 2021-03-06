% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nbrOfWorkers.R
\name{nbrOfWorkers}
\alias{nbrOfWorkers}
\title{Gets the number of workers available}
\usage{
nbrOfWorkers(evaluator = NULL)
}
\arguments{
\item{evaluator}{A future evaluator function.
If NULL (default), the current evaluator as returned
by \code{\link{plan}()} is used.}
}
\value{
A number in [1, Inf].
}
\description{
Gets the number of workers available
}
\examples{
plan(multiprocess)
nbrOfWorkers()  ## == availableCores()

plan(multiprocess, workers = 2)
nbrOfWorkers()  ## == 2

plan(sequential)
nbrOfWorkers()  ## == 1
}
