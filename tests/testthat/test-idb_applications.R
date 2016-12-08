context("idb_applications")

test_that("idb_applications works", {
  skip_on_cran()

  aa <- idb_applications()

  expect_is(aa, "tbl_df")
  expect_is(aa, "data.frame")
  expect_type(aa$no, "integer")
  expect_type(aa$name, "character")
  expect_type(aa$no_indices, "integer")
  expect_equal(colnames(aa),
               c("no", "name", "description", "no_indices",
                 "no_sensors", "no_references"))
})
