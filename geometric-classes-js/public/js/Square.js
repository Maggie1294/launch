class Square {
  constructor(length, x = 0, y = 0) {
    this.length = length;
    this.x = x;
    this.y = y;
  }
  area() {return(Math.pow(this.length));}
  perimeter() {return(4 * this.length);}
  contains_point(x,y) {
   return ( (x >= this.x-this.length/2) &&
   (x <= this.x+this.length/2) &&
   (y >= this.y - this.length/2) &&
   (y <= this.y+this.length/2) );
  }
}
