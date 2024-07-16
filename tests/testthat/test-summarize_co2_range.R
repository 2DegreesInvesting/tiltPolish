test_that("has the expected columns", {
  data <- emissions_product
  out <- summarize_co2_range(data)
  expect_snapshot(str(out))
})
