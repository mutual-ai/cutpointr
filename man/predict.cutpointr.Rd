% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predict.cutpointr.R
\name{predict.cutpointr}
\alias{predict.cutpointr}
\title{Predict using a cutpointr object}
\usage{
\method{predict}{cutpointr}(object, newdata, cutpoint_nr = 1, ...)
}
\arguments{
\item{object}{a cutpointr object.}

\item{newdata}{a data.frame with a column that contains the predictor
variable.}

\item{cutpoint_nr}{if multiple optimal cutpoints were found this parameter
defines which one should be used for predictions. Can be a vector if
different cutpoint numbers are desired for different subgroups.}

\item{...}{further arguments.}
}
\description{
Predictions are made on the \code{data.frame} in \code{newdata}
using either the variable name or by applying the same transformation to
the data as in \code{cutpointr}. The class of the output will be identical to the class
of the predictor.
}
\examples{
oc <- cutpointr(suicide, dsi, suicide)
## Return in-sample predictions
predict(oc, newdata = data.frame(dsi = oc$data[[1]]$dsi))
}
\seealso{
Other main cutpointr functions: \code{\link{add_metric}},
  \code{\link{cutpointr_}}, \code{\link{cutpointr}},
  \code{\link{multi_cutpointr}}, \code{\link{roc}}
}
\concept{main cutpointr functions}
