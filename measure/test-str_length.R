library(stringr)
library(testthat)

test_that("str_length returns correct length", {
  expect_equal(str_length("a"), 1)
  expect_equal(str_length("R for Data Science"), 18)
  expect_equal(str_length(c("a", "R", "cool")), c(1, 1, 4))
})

test_that("str_length handles missing values (NA)", {
  expect_equal(str_length(NA), NA_integer_)
  expect_equal(str_length(c("a", NA, "b")), c(1, NA, 1))
})

test_that("str_length returns 0 for empty strings", {
  expect_equal(str_length(""), 0)
  expect_equal(str_length(c("", "test", "")), c(0, 4, 0))
})

test_that("str_length converts factors to characters", {
  f <- factor(c("apple", "banana"))
  expect_equal(str_length(f), c(5, 6))
})