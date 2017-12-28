let reverseString = (word) => {
  let splitWord = word.split("");
  let newWord = splitWord.reverse();
  let result = newWord.join("");
  return result;
};
