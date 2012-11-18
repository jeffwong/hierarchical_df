#' Hierarchical Data Frames
#'
#' Convert a flat data frame that contains a hierarchy into nested lists
#' that are more appropriate for hierarchies
#' @param x - a flat data frame
#' @param hierarchy - a vector of integers representing which columns form
#'   the hierarchy
#' @param leaves.name - what should the names of the leaf nodes be
#' @param leaves - a vector of integers representing which columns form
#'   the leaves
#' @export
data.frame.hierarchical = function(x, hierarchy, leaves.name, leaves) {
  if(length(hierarchy) == 0) {
    children = lapply(x[,leaves], function(leaf) {
      list(name = leaf,
           size = abs(rnorm(1)*100))
    })
    return (unname(list(list(name = leaves.name,
                             children = unname(children)))))
  }
  index = hierarchy[1]
  unname(dlply(x, index, function(df) {
    list(name = as.character(df[1,index]),
         children = data.frame.hierarchical(df, hierarchy[-1], leaves.name, leaves))
  }))
}
