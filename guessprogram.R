number <- sample(0:100, 1)
guessMade <- -42
attempts <- 0

cat("Welcome to the guessing game! \n")

while(number != guessMade) {
  
  if (attempts == 5) {
    cat("You had 5 attempts. The correct number is ", number, "\n")
    break
  }
  
  guessMade <- readline(prompt="Make an educated guess between 0 and 100: \n")
  
  if (guessMade == number) { cat("Yay!\n") }
  else if (guessMade > number) { cat("Nope. Its smaller.\n") }
  else if (guessMade < number) { cat("Nope. Its bigger.\n") }
  
  attempts <- attempts + 1
}
