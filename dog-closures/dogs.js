// let stateDogNameOpinion = () => {
//   let commonDogName = 'Rover';
//   let unCommonDogName = 'Susan';
//
//   return `I believe ${commonDogName} is an excellent dog name. The name ${unCommonDogName} is a bad dog name.`;
// }
//
// let stateDogNameFact = () => {
//   let commonDogName = 'Rover';
//   let unCommonDogName = 'Susan';
//
//   return `I have never met a dog named ${unCommonDogName}; while several dogs are named ${commonDogName}`;
// }
//
// let callDogs = () => {
//   let commonDogName = 'Rover';
//   let unCommonDogName = 'Susan';
//
//   return `Hey, come here ${commonDogName} and ${unCommonDogName}`;
// }
//
// stateDogNameOpinion();
// stateDogNameFact();
// callDogs();

function dogTalk() {
  let commonDogName = 'Rover';
  let unCommonDogName = 'Susan';

  return {
    stateDogNameFact() {return `I believe ${commonDogName} is an excellent dog name. The name ${unCommonDogName} is a bad dog name.`;},
    stateDogNameOpinion() {return `I have never met a dog named ${unCommonDogName}; while several dogs are named ${commonDogName}`;},
    callDogs() {return `Hey, come here ${commonDogName} and ${unCommonDogName}`;}
  };
}
