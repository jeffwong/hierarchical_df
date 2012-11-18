\name{data.frame.hierarchical}
\alias{data.frame.hierarchical}
\title{Hierarchical Data Frames}
\usage{
  data.frame.hierarchical(x, hierarchy, leaves.name,
    leaves)
}
\arguments{
  \item{x}{- a flat data frame}

  \item{hierarchy}{- a vector of integers representing
  which columns form the hierarchy}

  \item{leaves.name}{- what should the names of the leaf
  nodes be}

  \item{leaves}{- a vector of integers representing which
  columns form the leaves}
}
\description{
  Convert a flat data frame that contains a hierarchy into
  nested lists that are more appropriate for hierarchies
}

