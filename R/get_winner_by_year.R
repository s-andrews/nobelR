get_winner_by_year <- function(years) {

  assertthat::assert_that(is.numeric(years))

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
