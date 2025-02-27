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

#' Plot K-Means Clusters
#'
#' @param data A data frame.
#' @param kmeans_result A kmeans object.
#' @param xvar X variable name.
#' @param yvar Y variable name.
#'
#' @return A scatter plot.
#' @export
plot_kmeans <- function(data, kmeans_result, xvar, yvar) {
  plot(data[, c(xvar, yvar)], col = kmeans_result$cluster, pch = 20, cex = 3)
  points(kmeans_result$centers, pch = 4, cex = 4, lwd = 4, col = "black")
}
