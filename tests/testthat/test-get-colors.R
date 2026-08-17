test_that("get_colors returns an unchanged built-in palette", {
  expect_identical(get_colors(2.1), c("#F89FA8", "#F9E9A4"))
})
