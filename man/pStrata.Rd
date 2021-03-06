% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pStrata.R
\name{pStrata}
\alias{pStrata}
\title{Compute Partial Strata Values}
\usage{
pStrata(ExpressionSet)
}
\arguments{
\item{ExpressionSet}{a standard PhyloExpressionSet or DivergenceExpressionSet object.}
}
\description{
This function computes the partial \code{\link{TAI}} or \code{\link{TDI}}
values for all Phylostrata or Divergence Strata.
}
\examples{

data(PhyloExpressionSetExample)

# compute partial TAI values for each Phylostratum
partialStrata <- pStrata(PhyloExpressionSetExample)

# show that colSums of pStrata is equavalent to the TAI values
all.equal(colSums(partialStrata),TAI(PhyloExpressionSetExample))

# show that colSums of pStrata is equavalent to colSums of pMatrix(PhyloExpressionSetExample)
all.equal(colSums(partialStrata),colSums(pMatrix(PhyloExpressionSetExample)))


}
\author{
Hajk-Georg Drost
}

