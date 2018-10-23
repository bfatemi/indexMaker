#' @title Construct Interval Indices
#'
#' @description Functions to create interval indices
#'
#' @param n outer boundary of interval
#'
#' @export
build_interval <- function(n) sapply(-n:n, `-`)


