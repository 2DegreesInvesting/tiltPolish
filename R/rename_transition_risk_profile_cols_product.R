#' Rename transition risk profile columns at product level
#'
#' @param data Dataframe.
#' @keywords internal
#' @export
rename_transition_risk_profile_cols_product <- function(data) {
  data |>
    rename(
      product = "ep_product",
      grouping_emission = "benchmark",
      emission_rank = "profile_ranking",
      emission_category = "emission_profile",
      sector_target = "reduction_targets",
      sector_category = "sector_profile",
      grouping_transition_risk = "benchmark_tr_score"
    )
}
