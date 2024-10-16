#' Select webtool columns at company level for wider format
#'
#' @param data Dataframe.
#' @keywords internal
#' @export
select_webtool_cols_at_company_level_wide <- function(data) {
  data |>
    select(
      -c(
        "emission_category_low",
        "emission_category_medium",
        "emission_category_high",
        "sector_category_low",
        "sector_category_medium",
        "sector_category_high",
        "transition_risk_category_low",
        "transition_risk_category_medium",
        "transition_risk_category_high",
        "transition_risk_category_NA",
        "cov_transition_risk",
        "cov_emission_rank",
        "cov_sector_target"
      )
    ) |>
    distinct()
}
