library(readxl)
data <- read_csv("data-raw/csv/student_performance.csv")
usethis::use_data(data, overwrite = TRUE)
#bp()


