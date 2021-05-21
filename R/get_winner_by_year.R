#' Find people by the year they won
#'
#' @param years Vector of years between 1901 and present
#'
#' @return A tibble of winner details
#' @export
#'
#' @examples
#' get_winner_by_year(1960:1969)
get_winner_by_year <- function(years) {

  NULL -> Year

  assertthat::assert_that(is.numeric(years))

  # Check that it's integers
  assertthat::assert_that(all(as.integer(years)==years))

  assertthat::assert_that(
    min(years) >= min(laureates$Year),
    msg="One of your years was earlier than the data we have"
  )

  assertthat::assert_that(
    max(years) <= max(laureates$Year),
    msg="One of your years was later than the data we have"
  )

  if (!all(years %in% laureates$Year)) {
    base::warning("For some of your years no prize was awarded")
  }

  laureates %>%
    dplyr::filter(Year %in% years) %>%
    dplyr::left_join(rationales) %>%
    return()

}
