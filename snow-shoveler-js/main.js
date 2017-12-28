// your code, here
// let snowfall = Math.round(prompt("How much snow fell last night?"));
//
// snowfall;
//
// if (snowfall > 0 && snowfall <= 49) { document.getElementById('main').innerHTML = "I will charge $20 to shovel."; }
// else if (snowfall > 49 && snowfall <= 149) { document.getElementById('main').innerHTML = "I will charge $50 to shovel.";}
// else if (snowfall > 149 && snowfall <= 299) { document.getElementById('main').innerHTML = "I will charge $100 to shovel.";}
// else if (snowfall >= 300) { document.getElementById('main').innerHTML = "I will charge $150 flat to shovel."; }

let snowTotal = Math.round((8 * 8 * 20)/12);
let estimate = 0;

Math.round(snowTotal);

if (snowTotal <= 49) {
  estimate = 20;
}

else if (50 <= snowTotal && snowTotal <= 149) {
  estimate = 50;
}

else if (150 <= snowTotal && snowTotal <= 299) {
  estimate = 100;
}

else (estimate = 150);

console.log(snowTotal);
console.log(estimate);

let projectEstimate = document.getElementById('main');
projectEstimate.innerHTML = 'The cost to shovel ' +
snowTotal + ' cubic feet of snow is $'+ estimate + '.';

console.log(projectEstimate);
