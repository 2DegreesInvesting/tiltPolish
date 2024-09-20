#' Select webtool columns at product level
#'
#' @param data Dataframe.
#' @keywords internal
#' @export
select_webtool_cols_at_product_level <- function(data) {
  data |>
    select(
      -c(
        "emissions_profile_equal_weight",
        "emissions_profile_best_case",
        "emissions_profile_worst_case",
        "sector_profile_equal_weight",
        "sector_profile_best_case",
        "sector_profile_worst_case",
        "transition_risk_low_threshold",
        "transition_risk_high_threshold",
        "transition_risk_profile_equal_weight",
        "transition_risk_profile_best_case",
        "transition_risk_profile_worst_case",
        "amount_of_distinct_products",
        "amount_of_distinct_products_matched",
        "min_headcount",
        "max_headcount",
        "postcode",
        "address",
        "co2e_lower",
        "co2e_upper",
        "transition_risk_NA_total",
        "transition_risk_NA_share"
      )
    ) |>
    distinct()
}
