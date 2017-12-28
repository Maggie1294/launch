// your code, here
let dishes = [
'Chicken Pot Pie',
'Baked Beans',
'Macaroni and Cheese',
'Burgundy Sauce with Beef and Noodles',
'Creamed Spinach',
'Pumpkin Pie',
'Strawberry Shortcake'];
//
// for(i = 0; i < 5; i++) {
//   let dish = prompt("What dish would you like?");
//   addDish(dish);
// }
//
// let foodItem = document.getElementById('main');
//
// dishes.forEach((dish) => {
//   foodItem.innerHTML += " <div class='food-item'>" + dish + " </div>";
// });

let mainDiv = document.getElementById('main');

dishes.forEach((dish) => {
  let foodItemDiv = document.createElement('div');
  foodItemDiv.className = 'food-item';
  foodItemDiv.innerHTML += dish;
  mainDiv.appendChild(foodItemDiv);
  foodItemDiv.addEventListener('click', () => {
  foodItemDiv.className += 'hidden';
});
});
