test_that("Prize Winners Keyword", {
  expect_equal(get_prize_years_by_keyword("penicillin"), 1945)
  expect_equal(get_prize_years_by_keyword("therapy"), c(1901,1934,2015,2015,2018))

  expect_error(get_prize_years_by_keyword(123))
  expect_error(get_prize_years_by_keyword(TRUE))
  expect_error(get_prize_years_by_keyword(c("x","y")))
})
