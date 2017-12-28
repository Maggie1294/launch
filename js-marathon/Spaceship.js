class Spaceship {
  constructor(name) {
    this.name = name;
    this.theCrew = [];
    this.propulsion = null;
  }
  loadCrew(crewObject) {
    this.theCrew = this.theCrew.concat(crewObject);
    this.theCrew.forEach(function(member) {
      console.log(`${member.name} has boarded. Welcome ${member.name}, we hope you enjoy your flight.`);
    });
  }
  captain(crewObject) {
    this.theCrew = this.theCrew.concat(crewObject);
    let randomCaptain = this.theCrew[Math.floor(Math.random() * this.theCrew.length)];
    console.log(`Today, ${randomCaptain.name} is today's captain. Please obey all orders given. *High-Five*`);
  }
  mountPropoulsion(rocketObject) {
    this.propulsion = rocketObject;
    console.log(`Rocket has been mounted. Final stage of launch sequence commence!`);
  }
  takeoff() {
    let rocketBoom = this.propulsion.fire();
    if(rocketBoom === false) {console.log('brooooommm :(');
    console.log('We need fuel.');}
    else { console.log(`VRRRRROOOOOOM!`); }
  }
}

module.exports = { Spaceship };
