#' ---
#' author: Your Name Here
#' title: POLS 501 Assignment 1
#' date: 2017-01-XX
#' ---

# [jrnold] This is a helper function to generate the URL for the QSS data
# why do this, DRY (don't repeat yourself) and I'm efficiently lazy
# you'll learn how to write functions soon.

#' Get the URL for a QSS data set.
#'
#' chapter: chapter name. E.g. "Introduction" (capitalization doesn't matter)
#' file: file name including extension. E.g. "Kenya.csv"
#'
#' stringr functions are covered in http://r4ds.had.co.nz/strings.html
#' and writing functions is covered in http://r4ds.had.co.nz/functions.html
#'
#' But wanted you to see the workflow I would use in this so that you develop
#' good coding habits early.
#'
qss_data_url <- function(chapter, file) {
  # ensure chapter name is uppercase regardless of user-input
  chapter_name <- stringr::str_to_upper(chapter)
  # add chapter and file names to the base URL to get the full URL to the file
  stringr::str_c("https://raw.githubusercontent.com/kosukeimai/qss/master/",
                 chapter_name, "/", file)
}
# e.g. see what this returns
# qss_data_url("intro", "Kenya.csv")
# > "https://raw.githubusercontent.com/kosukeimai/qss/master/INTRO/Kenya.csv"

# How can I be even lazier? All our data are from the introduction chapter
qss_intro_url <- function(file) {
  qss_data_url("INTRO", file)
}
# e.g. see what this returns
# qss_intro_url("Kenya.csv")
# > "https://raw.githubusercontent.com/kosukeimai/qss/master/INTRO/Kenya.csv"

# denote sections with comments and a visual line to make it clear
# see http://r4ds.had.co.nz/functions.html#functions-are-for-humans-and-computers

# Problem 1 -------------------------------------------------------------------

# load data

# read_csv can use URLs as paths
turnout <- read_csv(qss_intro_url("turnout.csv"))
# this is the same as
# turnout <- read_csv("https://raw.githubusercontent.com/kosukeimai/qss/master/INTRO/turnout.csv")
# or even
# turnout <- read_csv(qss_data_url("intro", "turnout.csv"))


# QSS Exercise 1.5.1

# Part 1 ++++++++++++++++++++

# Part 2 ++++++++++++++++++++

# Part 3 ++++++++++++++++++++

# Part 4 ++++++++++++++++++++

# Part 5 ++++++++++++++++++++



# Problem 2 -------------------------------------------------------------------
# QSS Exercise 1.5.2

# load data

Kenya <- read_csv(qss_intro_url("Kenya.csv"))
Sweden <- read_csv(qss_intro_url("Sweden.csv"))
World <- read_csv(qss_intro_url("World.csv"))


# Part 1 ++++++++++++++++++++

# Part 2 ++++++++++++++++++++

# Part 3 ++++++++++++++++++++

# Part 4 ++++++++++++++++++++

# Part 5 ++++++++++++++++++++

# Part 6 ++++++++++++++++++++
