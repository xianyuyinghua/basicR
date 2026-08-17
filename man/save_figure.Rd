\name{save_figure}
\alias{save_figure}
\title{Save a Figure in One or More Formats}
\usage{
save_figure(
  obj,
  filename,
  width = 6,
  height = 6,
  res = 600,
  formats = c("pdf", "tiff", "png", "svg"),
  font = "Arial"
)
}
\arguments{
  \item{obj}{A plot, plotting function, grob, heatmap, recorded plot, image, or plottable object.}
  \item{filename}{Output path without a filename extension.}
  \item{width, height}{Figure dimensions in inches.}
  \item{res}{Resolution in dots per inch for raster formats.}
  \item{formats}{Character vector containing one or more of \code{"pdf"}, \code{"tiff"}, \code{"png"}, and \code{"svg"}.}
  \item{font}{Font family passed to the graphics device.}
}
\value{Called for its side effect of writing figure files; returns \code{NULL} invisibly.}
\description{
Save several common R plot object types in one or more output formats.
}
