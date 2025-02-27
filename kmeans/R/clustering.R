#' Perform K-Means Clustering
#'
#' @param data A data frame with at least two numeric columns.
#' @param xvar The name of the column to use as the x-axis.
#' @param yvar The name of the column to use as the y-axis.
#' @param centers The number of clusters.
#'
#' @return A kmeans object containing cluster assignments and centers.
#' @export
perform_kmeans <- function(data, xvar, yvar, centers = 3) {
  selected_data <- data[, c(xvar, yvar)]
  kmeans(selected_data, centers)
}
