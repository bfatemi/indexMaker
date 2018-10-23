context("Basic Tests")

test_that("testing intervalist functions", {
  M <- 10
  expect_equal(10:-10, build_interval(M))
  expect_equal(lapply(M:1, function(i) c(i, -i)), GetIndexPairs(M))
  expect_equal(sapply(M:1, function(i) c(i, -i)), GetIndexPairs(M, asMatrix = TRUE))
})
