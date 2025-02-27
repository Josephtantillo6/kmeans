#' Calculate WCSS for Different Cluster Counts
#'
#' @param data A data frame.
#' @param xvar X variable name.
#' @param yvar Y variable name.
#' @param max_k Max number of clusters to test.
#'
#' @return A vector of WCSS values.
#' @export
calculate_wcss <- function(data, xvar, yvar, max_k = 10) {
  selected_data <- data[, c(xvar, yvar)]
  wcss <- sapply(1:max_k, function(k) {
    kmeans(selected_data, k)$tot.withinss
  })
  return(wcss)
}
