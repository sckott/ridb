context("idb_applications")

test_that("idb_applications works", {
  skip_on_cran()

  aa <- idb_applications()

  expect_is(aa, "tbl_df")
  expect_is(aa, "data.frame")
  expect_type(aa$no, "integer")
  expect_type(aa$abbreviation, "character")
  expect_type(aa$formula, "character")
  expect_true(any(grepl("InvisibleTimes", aa$formula)))
  expect_equal(colnames(aa),
               c("no", "name", "abbreviation", "formula", "variables", "source",
                 "no_sensors", "no_applications", "no_references"))
})
