test_that("yields the expected columns", {
  data <- emissions_product
  crucial <- c(col_by(), col_pick(), col_min(), col_max())
  expect_named(summarize_co2_range(data), crucial)
})

test_that("yields the expected rows", {
  data <- emissions_product
  out <- summarize_co2_range(data)
  expect_equal(unique(out$benchmark), col_pick())
})

test_that("errors gracefully", {
  data <- emissions_product

  col_rm <- function(data, crucial) data[setdiff(names(data), crucial)]

  crucial <- col_by()
  bad <- col_rm(data, crucial)
  expect_error(summarize_co2_range(bad), crucial)

  crucial <- col_pick()
  bad <- col_rm(data, crucial)
  expect_error(summarize_co2_range(bad), crucial)

  crucial <- col_min()
  bad <- col_rm(data, crucial)
  expect_error(summarize_co2_range(bad), crucial)

  crucial <- col_max()
  bad <- col_rm(data, crucial)
  expect_error(summarize_co2_range(bad), crucial)
})
