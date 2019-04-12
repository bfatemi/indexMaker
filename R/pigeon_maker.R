#' @title Pigeonhole Maker
#'
#' @description See examples
#'
#' @param total_count TBD
#' @param chunk_size TBD
#' @param f TBD
#' @param ... TBD
#'
#' @examples
#' VEC <- paste0("x", 1:1000)
#' f <- function(ind) VEC[ind]
#' index_pigeon(1000, 100, f, VEC)
#' index_pigeon(1000, 100, f, VEC, simplify = FALSE)
#'
#' @export
index_pigeon <- function(total_count, chunk_size, f = I, ...){
  remain <- total_count %% chunk_size
  count_buckets <- (total_count - remain) / chunk_size
  sapply(1:count_buckets, function(i, ...) f(((i-1)*chunk_size + 1):(i*chunk_size)), ...)
}


