containsNumber = (string) => {
  let regex = /\d/;
  return regex.test(string);
};

containsRepeatingLetter = (string) => {
  let regex = /([a-zA-Z])\1/;
  return regex.test(string);
};

endsWithVowel = (string) => {
  let regex = /([aeiouAEIOU])$/;
  return regex.test(string);
};

captureThreeNumbers = (string) => {
  let regex = /\d{3}/.exec(string);
  if (regex === null) {return false;} else {return regex[0];}
};

matchesPattern = (string) => {
  let regex = /\b(\d{3})-(\d{3})-(\d{4})\b/;
  return regex.test(string);
};

isUSD = (string) => {
  let regexOne = /^(?!0\.00)[$][1-9]\d{0,2}(,\d{3})*(\.\d{2})?$/;
  return regexOne.test(string);
};
