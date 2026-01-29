library(testthat)
source("believe.R")

test_that("Standard leap years are identified correctly", {
  #Years divisible by 4 but not 100
  expect_true(is_leap_year(2024))
  expect_true(is_leap_year(2004))
  expect_true(is_leap_year(1996))
})

test_that("Standard non-leap years are identified correctly", {
  #Years not divisible by 4
  expect_false(is_leap_year(2023))
  expect_false(is_leap_year(2001))
  expect_false(is_leap_year(1999))
})

test_that("Century years obey the 100/400 rule", {
  #Divisible by 100 but NOT 400 and NOT a leap year
  expect_false(is_leap_year(1900))
  expect_false(is_leap_year(1800))
  expect_false(is_leap_year(2100))
  
  #Divisible by 100 AND 400 and IS a leap year
  expect_true(is_leap_year(2000))
  expect_true(is_leap_year(1600))
  expect_true(is_leap_year(2400))
})

test_that("Invalid inputs throw errors", {
  #Wrong input data
  expect_error(is_leap_year("banana"))
  expect_error(is_leap_year(TRUE))
})