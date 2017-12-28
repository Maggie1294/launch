let Rami = 88;
let Natoya = 92;
let Bill = 68;
let Susie = 100;

let Sasha = 82;
let Mohammed = 98;
let Jennifer = 94;
let Ken = 92;

let justReactTotal = (Rami + Natoya + Bill + Susie);
let justReactAvg = Math.round(justReactTotal / 4);

let weAreRubyTotal = (Sasha + Mohammed + Jennifer + Ken);
let weAreRubyAvg = Math.round(weAreRubyTotal / 4);

let cohortAvg = Math.round((justReactTotal + weAreRubyTotal) / 8);

var cohortScores = [88, 92, 68, 100, 82, 98, 94, 92];
let passed = 0;
let failed = 0;
for (i = 0; i < 8; i++) {
  if (cohortScores[i] >= 70) {
    passed++;
  } else if (cohortScores[i] < 70) {
    failed++;
  }
}


console.log(justReactAvg);
console.log(weAreRubyAvg);
console.log(cohortAvg);
console.log(passed);
console.log(failed);
let cohortResults = document.getElementById('results');
cohortResults.innerHTML = 'Mentor Group: JustReact' + '<br>' + 'Average: ' +
justReactAvg + '<br><br>' + 'Mentor Group: We Are Ruby' + '<br>' + 'Average: ' + weAreRubyAvg +
'<br><br>' + 'Cohort Average: ' + cohortAvg + '<br><br>' + passed +
' students passed the quiz' + '<br>' + failed + ' did not pass';

console.log(cohortResults);
