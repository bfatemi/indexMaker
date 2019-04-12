#' Pair an Index for Performance Comparisons
#'
#' @param n outer boundary of interval
#' @param asMatrix boolean flag where TRUE returns Matrix, FALSE for list
#'
#' @name index_pairs
NULL

#' @describeIn index_pairs TBD
#' @export
GetIndexPairs <- function(n, asMatrix = FALSE){
  R <- sapply(lapply(n:1, build_interval), function(i) i[c(1, length(i))], simplify = asMatrix)
  return(R)
}


#' @describeIn index_pairs TBD
#' @export
converge_to_mid <- function(n) sapply(GetIndexPairs(n), "+", n, simplify = FALSE)
