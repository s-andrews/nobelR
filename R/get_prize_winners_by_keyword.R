#' Find winning years by keyword
#'
#' @param keyword Single word or phrase to search in the award rationales
#'
#' @return A vector of years which mention the keyword
#' @export
#'
#' @examples
#' get_prize_years_by_keyword("therapy")
get_prize_years_by_keyword <- function(keyword) {

  assertthat::assert_that(is.string(keyword))

  rationales %>%
    dplyr::filter(stringr::str_detect(base::toupper(Rationale), base::toupper(keyword))) %>%
    dplyr::pull(Year) %>%
    return()

}
