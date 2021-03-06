% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CollapseReplicates.R
\name{CollapseReplicates}
\alias{CollapseReplicates}
\title{Combine Replicates in an ExpressionSet}
\usage{
CollapseReplicates(ExpressionSet, nrep, FUN, stage.names = NULL)
}
\arguments{
\item{ExpressionSet}{a standard PhyloExpressionSet or DivergenceExpressionSet object.}

\item{nrep}{either a numeric value specifying the constant number of replicates per stage or a numeric vector specifying the variable number of replicates for each stage position.}

\item{FUN}{a window function (e.g., \code{\link{mean}}, \code{\link{median}}, \code{\link{max}}, \code{\link{min}}, etc.) specifying how replicate expression levels should be collapsed.}

\item{stage.names}{a character vector specifying the new names of collapsed stages.}
}
\description{
This function takes an \code{ExpressionSet} object storing either a constant or variable number
of biological or technical replicates per stage and collapses replicate expression levels using a defined \code{FUN} (window function).
}
\examples{
data(PhyloExpressionSetExample)

# combine the expression levels of the 2 replicates (const) per stage
# using mean as window function and rename new stages: "S1","S2","S3"
CollapseReplicates(ExpressionSet = PhyloExpressionSetExample[1:5,1:8], 
                   nrep          = 2, 
                   FUN           = mean, 
                   stage.names   = c("S1","S2","S3"))

# combine the expression levels of the 2 replicates (stage one), 2 replicates (stage two),
# and 3 replicates (stage three) using mean as window function 
# and rename new stages: "S1","S2","S3"
CollapseReplicates(ExpressionSet = PhyloExpressionSetExample[1:5,1:9], 
                   nrep          = c(2,2,3), 
                   FUN           = mean, 
                   stage.names   = c("S1","S2","S3"))


}
\author{
Hajk-Georg Drost
}

