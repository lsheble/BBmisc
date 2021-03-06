context("load2")

test_that("load2", {
  fd = tempdir()
  fn = file.path(fd, "foo.RData")
  save2(file=fn, x=1)
  expect_equal(load2(fn), 1)
  expect_equal(load2(fn, parts="x"), 1)
  z = list(x=1)
  expect_equal(load2(fn, simplify=FALSE), z)
  expect_error(load2(fn, parts="y"), "does not contain: y")
  ee = new.env()
  load2(fn, envir=ee)
  expect_equal(ee$x, 1)

  fn2 = file.path(fd, "xxx.RData")
  expect_error(expect_warning(load2(fn2)))
  expect_equal(load2(fn2, impute = NA), NA)

  save2(file=fn, x=1, y=2)
  z = list(x=1, y=2)
  expect_equal(load2(fn), z)
  expect_equal(load2(fn, parts=c("x", "y")), z)
  expect_equal(load2(fn, parts="x"), 1)
  expect_equal(load2(fn, parts="y"), 2)
})
