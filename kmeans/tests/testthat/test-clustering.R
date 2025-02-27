library(testthat)

test_that("perform_kmeans returns a kmeans object", {
  result <- perform_kmeans(iris, "Sepal.Length", "Sepal.Width", 3)
  expect_s3_class(result, "kmeans")
  expect_equal(length(result$cluster), nrow(iris))
})
