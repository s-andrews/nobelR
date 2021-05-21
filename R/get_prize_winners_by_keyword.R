get_prize_years_by_keyword <- function(keyword) {

  assertthat::assert_that(is.string(keyword))

  rationales %>%
    dplyr::filter(stringr::str_detect(base::toupper(Rationale), base::toupper(keyword))) %>%
    dplyr::pull(Year) %>%
    return()

}
