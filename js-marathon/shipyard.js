// YOUR CODE GOES HERE
let Spaceship = require('./Spaceship');
let ourShip = new Spaceship('RockStarship');
let Crewmember = require('./Crewmember');
let Rocket = require('./Rocket');
let crewNames = ['Tomi','Meka','Luna','Patti'];


let launchpad = (ship, crew) => {
  console.log(`Initiating launch sequence please stand by.`);
  ship.loadCrew(crew);
  // ourShip.captain(crew);
  ship.mountPropoulsion(Rocket);
  ship.takeoff();
  ship.propulsion.addFuel(10);
  countdown(10,ship);
};
// let trainedCrew = [];
//
// let trainCrew = (array) => {
//
//   array.forEach(function(name) {
//     trainedCrew.push(new Crewmember(name, true));
//   });
//   return trainedCrew;
// };
//
// let trainedCrewObjs = trainCrew(crewNames);

let trainCrew = (crewArray) => {
  let newCrew = [];
  let currentCrewMember = null;
  crewArray.forEach(function(element){
    currentCrewMember = new CrewMember(element);
    currentCrewMember.trained = true;
    newCrew.push(currentCrewMember);
  });
  return newCrew;
};

// let countdown = (integer) => {
//   if (integer === 0) {
//     console.log(`Blast off!`);
//     ourShip.takeoff();
//   }
//   else {
//     console.log(integer);
//     let countingDown = integer - 1;
//     setTimeout(function() {
//     countdown(countingDown);}, 1000);
//     }
// };

let countdown = (start, ship) => {
  setTimeout(() =>{
    if (start === 0) {
      console.log('Blast off!');
      ship.takeOff();
    } else {
      console.log(start);
      countdown((start - 1), ship);
    }
  }, 1000);
};

crewMembers = trainCrew(crewNames);
launchpad(ourShip, crewMembers);
