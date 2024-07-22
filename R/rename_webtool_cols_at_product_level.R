rename_webtool_cols_at_product_level <- function(data) {
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
