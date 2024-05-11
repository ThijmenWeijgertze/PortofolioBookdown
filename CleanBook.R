#---- small script for cleaning up bookdown files ----#

# executes with source("CleanBook.R") in the console
# idea: might be a good function for the package

# \033 starts ANSI
# [ specicifies the start ANSI
# 1 makeds it bold
# ; seperates parameters
# 33 makes it yellow (not to be confused with 033)
# m end ANSI
# \033[0m same as above but the 0 species there to be no formatting anymore

# show files to be deleted
bookdown::clean_book()

# warning using ANSI
cat("\033[1;33mWARNING: check the files before proceeding!\033[0m")

# ask before proceeding
proceed <- readline(prompt = "Proceed deletion (Y): ")

# if user types Y then delete files else don't delete files
if (proceed == "Y") {
  print("Files have been deleted")
  bookdown::clean_book(TRUE)
} else {
  print("Files have not been deleted")
}
