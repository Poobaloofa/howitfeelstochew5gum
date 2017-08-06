# Main Idea Notebook (Mathematica Standalone Application)

**Project Category**: Math Exploration

**Team Members**: Chris Vassallo, Julian Ivaldi, Jonathan Lam

## The Math
This application uses a mathematical algorithm to determine which words were most important in a text, thus finding key words or main ideas of a text. This required choosing which factors of the text to consider (e.g., similar words, word families, broader topic, etc.) that were all accessible through the `WordData` function in Mathematica. In the end, we used a function that calculated a score for each non-"stop word" in the text that was directly proportional to the frequency of the word in the provided text and inversely proportional to the square root of the rarity of the word in texts throughout history.

## The Submission
This project was mostly meant to demonstrate the power of the Wolfram Alpha language to access Wolfram Alpha's large databases, its ability to interpret large inputs, and its ease of displaying large amounts of data. In particular, this used a wide range of functions to access data such as `WordData` and `WordFrequencyData` from Wolfram's database, functions such as `Tally` and `SortBy` to easily manipulate large string inputs, and `WordCloud` to easily create a word cloud of the data.

Its largest contribution to math is its ability to go past traditional math forms (e.g., geometric shapes and graphing functions) and still use algorithms and big data in a clean, easy-to-understand way.

## Additional Notes
- This is easily expandable, and can easily be made into an API. It takes a string as an input and outputs an array of most important words with their weights.
- This file is a standalone Mathematica application
- Intended audience and purpose: older children to adults, for exploratory and statistical analysis of texts
