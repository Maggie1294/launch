let rocket = {
  fuel: 0,
  addFuel(fuelAmount) {
    if (fuelAmount === 0) { console.log(`We need fuel!`);}
    else {
      this.fuel += fuelAmount;
      console.log(`Fuel added. ${this.fuel} gallons is the amount of fuel we have.`);}},
  fire () {
    if (this.fuel === 0) {
      console.log('Launch failure. No fuel. Please add fuel and rebegin final launch sequence.');
      return false;
    } else {
      this.fuel -= 1;
      console.log(`Successful launch. All rockets are go with ${this.fuel} gallons left in the tank.`);
      return true;
    }
  }
};
module.exports = Rocket;
