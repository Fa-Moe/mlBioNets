% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cor_degree_abs.R
\name{cor_degree_abs}
\alias{cor_degree_abs}
\title{Correlation between degree and abundance
Graphing Pearson correlation between degree and abundance.}
\usage{
cor_degree_abs(g.list, abs.list, layer_names, layer_colors, title)
}
\arguments{
\item{g.list}{List of igraph objects (multilayer network).}

\item{abs.list}{List of abundances tables.}

\item{layer_names}{The names of each layer of the network (ex. "control layer").}

\item{layer_colors}{Assign a color to represent the layer (ex. "pink")}

\item{title}{Plot's title.}
}
\value{
Returns a correlation plot between the degree and abundance of each node. It shows the R-square and p-value.
}
\description{
Correlation between degree and abundance
Graphing Pearson correlation between degree and abundance.
}
\examples{

data("mlnet_dstoolAB")
data("tc_dstoolA")
data("tc_dstoolB")

# Create abundace list
lst <- list(tc_dstoolA, tc_dstoolB)

# Create a vector for layers' names
n <- c("Sample A", "Sample B")

cor_degree_abs (g.list = mlnet_dstoolAB, abs.list = lst, layer_names = n, layer_colors = c("green", "orange"), title = "Sample graph")

}
