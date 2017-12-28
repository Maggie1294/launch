let removeWithoutCopy = (arr, item) => {
  let index = arr.indexOf(item);
  while (index >= 0) {
    arr.splice(index, 1);
    index = arr.indexOf(item);
  }
return arr;
};

append = (arr, item) => {
  arr.push(item);
  return(arr);
};

truncate = (arr) => {
  arr.pop();
  return(arr);
};

prepend = (arr, item) => {
  arr.unshift(item);
  return(arr);
};

curtail = (arr) => {
  arr.shift();
  return(arr);
};

concat = (arr1, arr2) => {
  let result = arr1.concat(arr2);
  return(result);
};

insert = (arr, item, index) => {
  arr.splice(index, 0, item);
  return(arr);
};


count = (arr, item) => {
  let results = 0;
  arr.forEach (function(part) { if(part === item) {results += 1;}});
  return(results);
};

duplicates = (arr) => {
  let array = arr.sort();
  let results = [];
  for (i = 0; i < arr.length-1; i++) {
    if (array[i] == array[i-1]) {i++;}
    else if (array[i] == array[i+1]) { results.push(array[i]); }
  }
  return results;
};

square = (arr) => {
  array = arr.slice(0);
  results = array.map( function(i) {
    return i *= i;
  });
  return results;
};

findAllOccurrences = (arr, item) => {
  results = [];
  for(let i in arr) {if (arr[i] === item) {results.push(i);}}
  return results;
};
