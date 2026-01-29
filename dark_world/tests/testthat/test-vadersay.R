test_that("vadersay returns a message", {
  expect_match(vadersay("Luke"), "Luke")
  expect_match(vadersay(), "I find your lack of faith disturbing...")
})

