\name{normalize}
\title{Normalize array data}
\docType{methods}
\alias{normalize}
\alias{normalize.methods}
\alias{normalize.methods-method}
\alias{normalize.methods}
\alias{normalize.methods-method}
\alias{normalize.Cel.container.methods}
\alias{normalize.Plob.methods}
\description{
  Normalize data from from arrays to eachothers.
}
\usage{
normalize(object, ...)

normalize.methods(object)
}
\arguments{
  \item{object}{A \code{Cel.container} or a \code{Plob}}
%  \item{f.cdf}{a chip definition object object (as it is likely to be used by
%    many scaling functions) (for other kinds of arrays, this could be an
%    object holding informations about the chip... has to be discussed...).}
%  \item{method}{the method used to scale. Different methods will be
%    available for the different type of array data.}
%  \item{...}{other parameters the normalizing function might need...}
%}
%\value{
%A \code{\link[Biobase]{container-class}} of normalized objects.
%}
%\author{
%  L. Gautier <laurent@cbs.dtu.dk>
}
\details{
  Generic methods related to array data normalization. Currently defined for
  \code{Plob} and \code{Cel.container} objects...

  The method \code{normalize} returns a normalized object, which can be
  used further for analysis or expression values generation.
  An optional parameter \code{method} can be given to specify a method to use.

  A list of \emph{nicknames} for the known methods for an object is returned by
  \code{normalize.methods}. Details about them can be found knowing the
  following naming convention. Each method is called
  \code{normalise.NICKNAME}. If the nickname of a method is called for
  example "loess", the help page can be accessed by doing \code{help(normalize.loess)}.
  The \emph{nicknames} are stored in \code{normalize.Cel.container.methods} and in
  \code{normalize.Plob.methods} respectively. See the general documentation of the
  package to know more (like how to add your own methods).
  
  
}
\seealso{
  \code{\link{Cel.container-class}}, \code{\link{Plob}}, and the
  documentations for the respective normalizarion methods.
  }
\examples{
  data(listcel)
  listcel.n <- normalize(listcel, method="quantiles")  
}
\keyword{manip}

