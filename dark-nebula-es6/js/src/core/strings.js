reduceString = (str, amount) => {
  let re = new RegExp("(.)(?=\\1{" + amount + "})","g");
  return str.replace(re, "");
};

reverseString = (str) => {
  let array = str.split("");
  let reversedArray = array.reverse();
  let string = reversedArray.join("");
  return string;
};
