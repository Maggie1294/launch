// your code, here
let height = prompt("What is the height?");
let width = prompt("what is the width?");
let perimeter = (w,h) => {
    return ((w * 2) + (h * 2));
}
console.log(perimeter);
// perimeter (6,10);
document.getElementById('main').innerHTML = "The perimeter is " + perimeter(width, height);
