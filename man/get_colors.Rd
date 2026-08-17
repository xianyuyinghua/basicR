\name{get_colors}
\alias{get_colors}
\title{Select a Colour Palette}
\usage{
get_colors(number = 2.1, name = NA, show = FALSE, package = NA)
}
\arguments{
  \item{number}{A number whose integer part selects the palette size and whose decimal form selects a built-in palette.}
  \item{name}{An optional palette name for an external palette package.}
  \item{show}{Whether to display the available or selected colours.}
  \item{package}{An optional palette source, such as \code{"brewer"}, \code{"viridis"}, or \code{"ggsci"}.}
}
\value{A character vector of colours when a matching palette is found.}
\description{
Select colours from the built-in collection or from a supported palette package.
}
