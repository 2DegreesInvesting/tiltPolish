
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

# Example product level result of the emissions indicator
emissions_product
#>        benchmark           tilt_subsector min max other
#> 1            all construction residential   1   2     3
#> 2           unit construction residential   1   2     3
#> 3 tilt_subsector construction residential   1   2     3
#> 4 tilt_subsector           something else   1   2     3

emissions_product |> summarize_co2_range()
#>        benchmark           tilt_subsector min max
#> 3 tilt_subsector construction residential   1   2
#> 4 tilt_subsector           something else   1   2
```
