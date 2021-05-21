test_that("Winner by Year", {
  expect_is(get_winner_by_year(2020), "tbl")
  expect_equal(nrow(get_winner_by_year(2020)),1)

  expect_is(get_winner_by_year(1970:1979), "tbl")
  expect_gt(nrow(get_winner_by_year(1970:1979)),1)

  expect_error(get_winner_by_year("fred"))
  expect_error(get_winner_by_year(1980.5))
  expect_error(get_winner_by_year(1800))
  expect_error(get_winner_by_year(3000))
  expect_warning(get_winner_by_year(1942))
  expect_warning(get_winner_by_year(1940:1949))
})
