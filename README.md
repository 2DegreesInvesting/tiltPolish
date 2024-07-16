
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
library(tiltPolish)
library(dplyr, warn.conflicts = FALSE)
# styler: off
product <- tibble::tribble(
        ~benchmark, ~tilt_subsector, ~min, ~max, ~other,
             "all", "construction residential", 100, 101, 1,
            "unit", "construction residential", 100, 101, 1,
  "tilt_subsector", "construction residential", 100, 101, 1,
  "tilt_subsector",           "something else", 100, 101, 1,
)
# styler: on

cols <- c("benchmark", "tilt_subsector", "min", "max")
product |> 
  select(all_of(cols)) |> 
  filter(benchmark == "tilt_subsector") |> 
  # should be unnecessary but just in case
  distinct()
#> # A tibble: 2 × 4
#>   benchmark      tilt_subsector             min   max
#>   <chr>          <chr>                    <dbl> <dbl>
#> 1 tilt_subsector construction residential   100   101
#> 2 tilt_subsector something else             100   101
```
