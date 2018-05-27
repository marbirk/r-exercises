random <- sample.int(100, 1)
input <- 1000

message("Welcome!\n")
message("How many rounds do you need for guessing my number between 0 and 100?\n")

while(random != input) {
  input <- read()
  if (random == input) {
    message("Strike! ", random ," is my number!.\n")
  }
  else if (random > input) {
    message("My number is bigger!\n")
  }
  else if(random < input) {
    message("My number is smaller!\n")
  }
}

read <- function() {
  x <- readline(prompt="Please enter a number: ")
  if(!grepl("^[0-9]+$",x)) {
    return(read())
  }
  return(as.integer(x))
}
