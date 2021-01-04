devtools::install_github("jakesherman/easypackages")
library("easypackages")
my_packages <- c("readxl", "tidyverse", "zoo", "RcppRoll",
                 "gridExtra", "grid", "plotly", "htmlwidgets")
packages(my_packages)
libraries(my_packages)