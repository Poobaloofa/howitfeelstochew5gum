# Main Idea Notebook (Mathematica Standalone Application)

**Project Category**: Math Exploration

**Team Members**: Chris Vassallo, Julian Ivaldi, Jonathan Lam

## The Math
A mathematical algorithm to determine which words were most important was necessary for this application. This required choosing which factors of the text to consider (e.g., similar words, word families, broader topic, etc.) that were all accessible through the `WordData` function in Mathematica. In the end, we used a function that calculated a score for each non-"stop word" in the text that was directly proportional to the frequency of the word in the provided text and inversely proportional to the square root of the rarity of the word in texts throughout history.

## The Submission
This project was mostly meant to demonstrate the power of the Wolfram Alpha language to access Wolfram Alpha's large databases, its ability to interpret large inputs, and its ease of displaying large amounts of data. In particular, this used a wide range of functions to access data such as `WordData` and `WordFrequencyData` from Wolfram's database, functions such as `Tally` and `SortBy` to easily manipulate large string inputs, and `WordCloud` to easily create a word cloud of the data.

## Additional Notes
- This is easily expandable, and can easily be made into an API. It takes a string as an input and outputs an array of most important words with their weights.
- This file is a standalone Mathematica application
