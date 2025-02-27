test_that("plot_kmeans does not produce errors", {
  result <- perform_kmeans(iris, "Sepal.Length", "Sepal.Width", 3)
  expect_silent(plot_kmeans(iris, result, "Sepal.Length", "Sepal.Width"))
})
