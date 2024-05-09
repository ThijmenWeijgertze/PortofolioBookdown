# show files to be deleted
print("Files to be deleted:")
bookdown::clean_book()

# ask before proceeding bc it's about deleting data
confirmation <- readline(prompt = "Proceed (Y): ")
print(user_input)

if (confirmation == "Y") {
  # delete files
  bookdown::clean_book(TRUE)
} else {
  # don't delete files
  print("Files have not been deleted")
}
