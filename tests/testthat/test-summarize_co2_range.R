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
