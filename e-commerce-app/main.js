let inventory = [
  ['LA-LG-STICKER', 300, 'Large Sticker', 'images/la-large-sticker-256px.png', 'Show your Launch pride by plastering your laptop with these beautiful die-cut stickers.'],
  ['LA-SM-STICKER', 200, 'Small Sticker', 'images/la-small-sticker-128px.png', "It\'s a tiny Launch sticker. How cute!"],
  ['LA-T-SHRIT', 50, 'T-Shirt', 'images/la-t-shirt-200px.png', '100% Cotton. Makes a great gift.']
]

class Product {

  constructor(id, quantity, name, image, description) {
    this.id = id;
    this.quantity = quantity;
    this.name = name;
    this.image = image;
    this.description = description;
  }

  sell() {
    this.quantity --
  }

  toHTML() {
    let productHtml = `<div class='product'>
    <h2>Product Name:</h2>
    <h3>${this.name}</h3>
    <br>
    <img src='${this.image}' alt='${this.name}' />
    <br>
    <div class='desc'>
    <h4>Description:</h4>
    <p>${this.quantity} is in stock</p>
    <p> ${this.description} </p>
    </div>
    <br>
    <br>
    </div>`;

    return productHtml;
  }
}

  let productData = (product)=> {
    return component = new Product(...product);
  }

  let productArray = inventory.map(productData)

  element = document.getElementById('all-products')

  productArray.forEach((product)=> {
    element.innerHTML += product.toHTML()
  })
