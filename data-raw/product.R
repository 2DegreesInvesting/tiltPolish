# styler: off
emissions_product <- tibble::tribble(
        ~benchmark,            ~tilt_subsector, ~min, ~max, ~other,
             "all", "construction residential",    1,    2,      3,
            "unit", "construction residential",    1,    2,      3,
  "tilt_subsector", "construction residential",    1,    2,      3,
  "tilt_subsector",           "something else",    1,    2,      3,
)
# styler: on

usethis::use_data(emissions_product, overwrite = TRUE)
