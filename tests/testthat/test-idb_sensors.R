context("idb_sensors")

test_that("idb_sensors works", {
  skip_on_cran()

  aa <- idb_sensors()

  expect_is(aa, "tbl_df")
  expect_is(aa, "data.frame")
  expect_type(aa$no, "integer")
  expect_type(aa$spectrum, "character")
  expect_type(aa$name, "character")
  expect_equal(colnames(aa),
               c("no", "name", "bands", "spectrum", "spatial_resolution", "include",
                 "platform", "operator", "launch_date", "comment", "no_indices",
                 "no_applications", "no_references"))
})
