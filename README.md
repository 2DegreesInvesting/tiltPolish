
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tiltPolish

<!-- badges: start -->

[![R-CMD-check](https://github.com/2DegreesInvesting/tiltPolish/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/2DegreesInvesting/tiltPolish/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of tiltPolish is to polish tilt data.

## Installation

You can install the development version of tiltPolish from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("2DegreesInvesting/tiltPolish")
```

## Example

``` r
library(dplyr, warn.conflicts = FALSE)
library(tiltPolish)

# Example product level result of the emissions indicator
emissions_product
#> # A tibble: 4 × 5
#>   benchmark      tilt_subsector             min   max other
#>   <chr>          <chr>                    <dbl> <dbl> <dbl>
#> 1 all            construction residential     1     2     3
#> 2 unit           construction residential     1     2     3
#> 3 tilt_subsector construction residential     1     2     3
#> 4 tilt_subsector something else               1     2     3

cols <- c("benchmark", "tilt_subsector", "min", "max")
emissions_product |> 
  select(all_of(cols)) |> 
  filter(benchmark == "tilt_subsector") |> 
  # should be unnecessary but just in case
  distinct()
#> # A tibble: 2 × 4
#>   benchmark      tilt_subsector             min   max
#>   <chr>          <chr>                    <dbl> <dbl>
#> 1 tilt_subsector construction residential     1     2
#> 2 tilt_subsector something else               1     2
```
