rename_webtool_cols_at_company_level_wide <- function(data) {
  data |>
    rename(
      emission_rank_NA_share = "emission_category_NA",
      sector_target_NA_share = "sector_category_NA"
    )
}
