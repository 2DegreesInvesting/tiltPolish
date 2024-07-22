rename_webtool_cols_at_company_level_wide <- function(data) {
  data |>
    rename(
      co2e_avg = "co2_avg",
      grouping_emission = "benchmark",
      emission_rank_avg_equal_weight = "profile_ranking_avg",
      emission_rank_avg_best_case = "avg_profile_ranking_best_case",
      emission_rank_avg_worst_case = "avg_profile_ranking_worst_case",
      emission_rank_NA_share = "emission_category_NA",
      sector_target_avg_equal_weight = "reduction_targets_avg",
      sector_target_avg_best_case = "avg_reduction_targets_best_case",
      sector_target_avg_worst_case = "avg_reduction_targets_worst_case",
      sector_target_NA_share = "sector_category_NA",
      grouping_transition_risk = "benchmark_tr_score_avg"
    )
}
