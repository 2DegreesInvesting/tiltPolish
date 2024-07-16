col_summarize_co2_range <- function() {
  c(col_by(), col_pick(), col_min(), col_max())
}

col_by <- function() "benchmark"
col_pick <- function() "tilt_subsector"
col_min <- function() "min"
col_max <- function() "max"

