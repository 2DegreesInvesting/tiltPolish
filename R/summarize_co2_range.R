summarize_co2_range <- function(data) {
  cols <- c(col_by(), col_pick(), col_min(), col_max())
  rows <- data[[col_by()]] == col_pick()
  data[rows, cols, drop = FALSE]
}
