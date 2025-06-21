# install.R
# This script is run by Binder to install R packages

install.packages(c(
  "tidyverse", # Includes dplyr, ggplot2, readr etc.
  "devtools"   # Often useful for installing packages from GitHub, etc.
), repos = "[http://cran.us.r-project.org](http://cran.us.r-project.org)")

# Ensure all dependencies are available if not part of tidyverse
# For example, if you specifically needed 'readr' and not just 'tidyverse'
# install.packages("readr", repos = "[http://cran.us.r-project.org](http://cran.us.r-project.org)")