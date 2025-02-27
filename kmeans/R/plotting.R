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
