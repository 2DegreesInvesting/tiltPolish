#' Summarize the range of CO2
#'
#' @param data Data frame. The product level result of the emissions indicator.
#'
#' @return A data frame:
#' * Columns: `r toString(c(col_by(), col_pick(), col_min(), col_max()))`.
#' * Rows: Rows where `r col_by()` equals `r col_pick()`.
#'
#' @export
#'
#' @examples
#' data <- emissions_product
#' summarize_co2_range(data)
summarize_co2_range <- function(data) {
  cols <- c(col_by(), col_pick(), col_min(), col_max())
  check_crucial_names(data, cols)
  rows <- data[[col_by()]] == col_pick()
  data[rows, cols, drop = FALSE]
}
