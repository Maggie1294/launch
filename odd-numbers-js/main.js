// your code, here
// let i = 0;
// let count = 100;
// while (i < count) {
//   console.log(i % 2 ==1);
//   i++;
// }
//
// document.getElementById('main').innerHTML = (i++);
let oddNumbers = () => {
  number = "";
  for (let i = 0; i <= 100; i++) {
    if ((i % 2) !==0)
    number += i + "\n";
    console.log(i);
  }
return number;
};

let text = document.getElementById('main');
text.innerHTML = (OddNumbers());
