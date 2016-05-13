# this script must be run in the main directory of the project

library(readr)
library(dplyr)
library(purrr)

# unzip to a temporary directory
temp <- tempdir()

unzip("data-raw/data-csv.zip", exdir = temp)

# read in each CSV
infolder <- list.files(temp, pattern = "offshore", full.names = TRUE)
infiles <- list.files(infolder, full.names = TRUE)

csvs <- map(infiles, read_csv)
names(csvs) <- tools::file_path_sans_ext(basename(infiles))
attach(csvs)

library(devtools)

use_data(all_edges, overwrite = TRUE)
use_data(Addresses, overwrite = TRUE)
use_data(Entities, overwrite = TRUE)
use_data(Intermediaries, overwrite = TRUE)
use_data(Officers, overwrite = TRUE)
