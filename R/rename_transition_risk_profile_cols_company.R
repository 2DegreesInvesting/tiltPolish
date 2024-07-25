#' Rename transition risk profile columns at company level
#'
#' @param data Dataframe.
#' @keywords internal
#' @export
rename_transition_risk_profile_cols_company <- function(data) {
  if ("co2_avg" %in% names(data)) {
    data <- data |>
      rename(co2e_avg = "co2_avg")
  }
  data |>
    rename(
      grouping_emission = "benchmark",
      emission_rank_avg_equal_weight = "profile_ranking_avg",
      emission_rank_avg_best_case = "avg_profile_ranking_best_case",
      emission_rank_avg_worst_case = "avg_profile_ranking_worst_case",
      sector_target_avg_equal_weight = "reduction_targets_avg",
      sector_target_avg_best_case = "avg_reduction_targets_best_case",
      sector_target_avg_worst_case = "avg_reduction_targets_worst_case",
      grouping_transition_risk = "benchmark_tr_score_avg"
    )
}
