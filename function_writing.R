# the basic task ... don't do it like this
airtemps <- c(212, 30.3, 78, 32)
celsius1 <- (airtemps[1] - 32) * 5/9
celsius2 <- (airtemps[2] - 32) * 5/9
celsius3 <- (airtemps[3] - 32) * 5/9

# could do it like this, but we are going to pretend that the task is more complex
celsius_all <- (airtemps - 32) * 5/9

# so we write a function. fahr is the argument. 
# run this section to create the function (gets listed in environment)
# function will automatically  return last line, but that is not always what you want to return (say, if there is a checker line)
fahr_to_celsius <- function(fahr) {
  celsius <- (fahr - 32) * 5/9
  return(celsius)
}

# to run function on a single value
celsius1_new <- fahr_to_celsius(airtemps[1])
celsius1 == celsius1_new

# to run function on all input
celsius <- fahr_to_celsius(airtemps)


