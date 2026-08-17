test_that("save_figure writes a PNG file", {
  output <- tempfile()
  save_figure(function() plot(1, 1), output, formats = "png", res = 72, font = "sans")
  expect_true(file.exists(paste0(output, ".png")))
})
