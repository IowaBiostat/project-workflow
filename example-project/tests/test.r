library(tinytest)
devtools::load_all()
run_test_dir('tinytest', pattern='*.[rR]')
