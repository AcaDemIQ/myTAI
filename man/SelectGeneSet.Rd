% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/SelectGeneSet.R
\name{SelectGeneSet}
\alias{SelectGeneSet}
\title{Select a Subset of Genes in an ExpressionSet}
\usage{
SelectGeneSet(ExpressionSet, gene.set)
}
\arguments{
\item{ExpressionSet}{a standard PhyloExpressionSet or DivergenceExpressionSet object.}

\item{gene.set}{a character vector storing the gene ids for which gene expression profiles shall be visualized.}
}
\description{
Select a subset of genes stored in the input \code{ExpressionSet}.
}
\details{
This function selects a subset of genes specified in \code{gene.set} stored in the input \code{ExpressionSet} and returns a subset \code{ExpressionSet}.

This function is useful for studying the evolutionary \emph{properties} of a subset of genes
stored in the \code{ExpressionSet}.
}
\examples{
data(PhyloExpressionSetExample)

# receive a subset ExpressionSet for the fist 5 genes stored in
# the PhyloExpressionSetExample
SelectGeneSet(ExpressionSet = PhyloExpressionSetExample,
            gene.set      = PhyloExpressionSetExample[1:5, 2])
}
\author{
Hajk-Georg Drost
}
\seealso{
\code{\link{PlotGeneSet}}, \code{\link{PlotEnrichment}}
}
