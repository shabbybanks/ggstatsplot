% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggcorrmat.R
\name{ggcorrmat}
\alias{ggcorrmat}
\title{Visualization of a correlalogram (or correlation matrix) using
'ggplot2'/'ggcorrplot'}
\usage{
ggcorrmat(data, cor.vars, cor.vars.names = NULL, output = "plot",
  type = "full", method = "square", corr.method = "pearson", digits = 2,
  sig.level = 0.05, hc.order = FALSE, hc.method = "complete",
  lab = TRUE, colors = c("#6D9EC1", "white", "#E46726"),
  outline.color = "black", ggtheme = ggplot2::theme_gray, title = NULL,
  subtitle = NULL, caption = NULL, caption.default = TRUE,
  lab_col = "black", lab_size = 4.5, insig = "pch", pch = 4,
  pch.col = "blue", pch.cex = 10, tl.cex = 12, tl.col = "black",
  tl.srt = 45)
}
\arguments{
\item{data}{Dataframe from which variables specified are preferentially to be
taken.}

\item{cor.vars}{List of vairables for which the correlation matrix is to be
computed and visualized.}

\item{cor.vars.names}{Optional list of names to be used for \code{cor.vars}. The
names should be entered in the same order.}

\item{output}{Expected output from this function: "plot" (visualization
matrix) or "correlations" (correlation matrix) or #' "p-values" (matrix of
p-values).}

\item{type}{Character, "full" (default), "upper" or "lower", display full
matrix, lowe triangular or upper triangular matrix.}

\item{method}{Character argument that decides the visualization method of
correlation matrix to be used. Allowed values are "square" (default),
"circle".}

\item{corr.method}{A character string indicating which correlation
coefficient is to be computed ("pearson" (default) or "kendall", or
"spearman").}

\item{digits}{Decides the number of decimal digits to be added into the plot
(Default: 2).}

\item{sig.level}{Significance level (Dafault: 0.05). If the p-value in p-mat
is bigger than sig.level, then the correspondi#' ng correlation coefficient
is regarded as insignificant.}

\item{hc.order}{Logical value. If \code{TRUE}, correlation matrix will be
hc.ordered using \code{hclust} function (Default is \code{FALSE}).}

\item{hc.method}{The agglomeration method to be used in \code{hclust} (see
\code{?hclust}).}

\item{lab}{Logical value. If \code{TRUE}, correlation coefficient values will be
displayed in the plot.}

\item{colors}{A vector of 3 colors for low, mid, and high correlation values.}

\item{outline.color}{The outline color of square or circle. Default value is
"gray".}

\item{ggtheme}{A function, \code{ggplot2} theme name. Default value is
theme_minimal. Allowed values are the official \code{ggplot2} themes including
\code{theme_gray}, \code{theme_bw}, \code{theme_minimal}, \code{theme_classic}, \code{theme_void},
etc.}

\item{title}{The text for the plot title.}

\item{subtitle}{The text for the plot subtitle.}

\item{caption}{The text for the plot caption. If not specified (if it is
\code{NULL}, i.e.), a default caption will be shown.}

\item{caption.default}{Logical decides whether the default caption should be
shown.}

\item{lab_col}{Color to be used for the correlation coefficient labels
(applicable only when \code{lab = TRUE}).}

\item{lab_size}{Size to be used for the correlation coefficient labels
(applicable only when \code{lab = TRUE}).}

\item{insig}{Character used to show specialized insignificant correlation
coefficients ("pch" (default) or "blank"). If "blank", the corresponding
glyphs will be removed; if "pch" is used, characters (see \code{pch} for
details) will be added on #' the corresponding glyphs.}

\item{pch}{Decides the glyphs to be used for insignificant correlation
coefficients (only valid when \code{insig = "pch"}). Default value is 4.}

\item{pch.col, pch.cex}{The color and the cex (size) of \code{pch} (only valid when
\code{insig = "pch"}). Defaults are \code{pch.col = "blue"} and \code{pch.cex = 10}.}

\item{tl.cex, tl.col, tl.srt}{The size, the color, and the string rotation of
text label (variable names).}
}
\value{
Correlation matrix plot or correlation coefficient matrix or matrix
of p-values.
}
\description{
Visualization of a correlalogram (or correlation matrix) using
'ggplot2'/'ggcorrplot'
}
\examples{

library(ggplot2)

# to get the correlalogram
ggstatsplot::ggcorrmat(
data = datasets::iris,
cor.vars = c(Sepal.Length:Petal.Width)
)

# to get the correlation matrix
ggstatsplot::ggcorrmat(
data = datasets::iris,
cor.vars = c(Sepal.Length:Petal.Width),
output = "correlations"
)
# setting output = "p-values" will return the p-value matrix

# modifying few elements of the correlation matrix by changing function defaults
ggstatsplot::ggcorrmat(
data = datasets::iris,
cor.vars = c(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width),
sig.level = 0.01,
ggtheme = ggplot2::theme_gray,
hc.order = TRUE, type = "lower", outline.col = "white",
title = "Dataset: Iris"
)

}
\author{
Indrajeet Patil
}
