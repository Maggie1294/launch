// your code, here
// class Rectangle {
//   constructor(width, height) {
//     this.width = width;
//     this.height = height;
//   }
// }
// 
// class Rectangle {
//   constructor(width, height) {
//     this.width = width;
//
//     // check if height is provided
//     if (!!height) {
//       this.height = height;
//     } else {
//       this.height = width;
//     }
//   }
// }

class Rectangle {
  constructor(width, height) {
    this.width = width;

    if (height) {
      this.height = height;
    } else {
      this.height = width;
    }
  }

  area() {
    return this.width * this.height;
  }
}
