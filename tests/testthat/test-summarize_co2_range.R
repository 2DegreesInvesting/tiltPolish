test_that("yields the expected data structure", {
  data <- emissions_product
  out <- summarize_co2_range(data)
  expect_snapshot(str(out))
})
