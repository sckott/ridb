context("idb_indices")

test_that("idb_indices works", {
  skip_on_cran()

  aa <- idb_indices()

  expect_is(aa, "tbl_df")
  expect_is(aa, "data.frame")
  expect_type(aa$no, "integer")
  expect_type(aa$abbreviation, "character")
  expect_type(aa$formula, "character")
  expect_true(any(grepl("InvisibleTimes", aa$formula)))
})
