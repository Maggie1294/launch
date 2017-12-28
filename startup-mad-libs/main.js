let companyName = 'New Digital Enterprises, Inc.';
let anOffering = 'a revolutionary new platform';
let aTargetAudience = 'the world';
let solveAProblem = 'create new dynamic markets for business';
let secretSauce = 'by building invite-only Internets';

// your code, here

let firstLine = "My company, " + companyName;
let secondLine = "is developing " + anOffering;
let thirdLine = "to help " + aTargetAudience;
let fourthLine = solveAProblem;
let fifthLine = secretSauce;

let pitch = firstLine + '\n' + secondLine + '\n' + thirdLine + '\n' + fourthLine + '\n' + fifthLine;

document.getElementById('main').innerHTML = pitch;
