# README for Username Validation Script

## Author Information
- **Name:** Andy Nguyen
- **Course:** CPSC298
- **Assignment:** Maxscore Assignment
- **Date:** 11/10

## Program Description
This program takes 5 scores and compares them all, taking the maxscore out of them and calculating the difference between each score in order.

## Usage
To run the script interactively:
```bash
./maxscore.sh
```

To test with the provided input file:
```bash
./maxscore.sh < maxscore-input
```

## How the Script Works
The script first prompts the user to enter 5 positive integers, reading each one with `read` and storing them in an array called `score`. It sets the first entered number as the initial maximum, then uses a `for` loop to go through the remaining scores and update the maximum if a larger value is found. After finding the highest score, another loop goes through each element in the array, calculates the difference between that score and the maximum, and prints both the score and its difference from the highest.


## Testing Results
Empty inputs, floats and strings caused an error, while all integers were fine.

## Challenges and Solutions
Figuring out why floats and integers don't work.

## Resources
ChatGPT, Class slides, google, stack overflow, YouTube

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
