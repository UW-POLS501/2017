
### A script with instructions to access swirl
### PolS 501, Winter 2017
### Nora Webb Williams


#### Preliminaries
# Install the package, should only need to do once per computer

# install.packages("swirl") 

library(swirl) # load the package

### Install courses

install_course("Getting_and_Cleaning_Data") # Install the tidyverse swirls I know of so far. 
                                            # Two of the four lessons in this course deal with
                                            # dplyr; the last two cover tidyr and lubridate

install_course("R_Programming") # Lessons 1 and 3 are good and important for very beginning R,
                                # but feel free to do as many of these lessons as you want!
                                # Note that we can do some of the suggested tasks using
                                # the tidyverse 'dialect' of R instead of what they suggest,
                                # but the swirl will only accept their dialect as correct

install_course_github("kosukeimai", "qss-swirl") # install a swirl course for the QSS textbook
                                                 # for use later

# uninstall_course("qss-swirl") #uninstall and reinstall the course to update, as needed

### Remember, you can get additional swirl courses from the swirl course repository on Github
### You can get there from within swirl by selecting "Take me to the swirl course repository!

## Start swirl with the line below. Then all the action will be in the console.

swirl()
