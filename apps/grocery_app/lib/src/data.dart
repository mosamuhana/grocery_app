import 'models/category.model.dart';
import 'models/grocery_item.dart';

const _imageBase = 'assets/app_images';
const _categoriesBase = '$_imageBase/categories_images';
const _groceryBase = '$_imageBase/grocery_images';
const _beveragesBase = '$_imageBase/beverages_images';

final List<Category> demoCategoryItems = <Category>[
  Category(
    id: 1,
    name: "Fresh Fruits & Vegetables",
    image: "$_categoriesBase/fruit.png",
  ),
  Category(
    id: 2,
    name: "Cooking Oil",
    image: "$_categoriesBase/oil.png",
  ),
  Category(
    id: 3,
    name: "Meat & Fish",
    image: "$_categoriesBase/meat.png",
  ),
  Category(
    id: 4,
    name: "Bakery & Snacks",
    image: "$_categoriesBase/bakery.png",
  ),
  Category(
    id: 5,
    name: "Dairy & Eggs",
    image: "$_categoriesBase/dairy.png",
  ),
  Category(
    id: 6,
    name: "Beverages",
    image: "$_categoriesBase/beverages.png",
  ),
];

final List<GroceryItem> demoGroceryItems = <GroceryItem>[
  GroceryItem(
    id: 1,
    name: "Organic Bananas",
    description: "7pcs, Priceg",
    price: 4.99,
    image: "$_groceryBase/banana.png",
  ),
  GroceryItem(
    id: 2,
    name: "Red Apple",
    description: "1kg, Priceg",
    price: 4.99,
    image: "$_groceryBase/apple.png",
  ),
  GroceryItem(
    id: 3,
    name: "Bell Pepper Red",
    description: "1kg, Priceg",
    price: 4.99,
    image: "$_groceryBase/pepper.png",
  ),
  GroceryItem(
    id: 4,
    name: "Ginger",
    description: "250gm, Priceg",
    price: 4.99,
    image: "$_groceryBase/ginger.png",
  ),
  GroceryItem(
    id: 5,
    name: "Meat",
    description: "250gm, Priceg",
    price: 4.99,
    image: "$_groceryBase/beef.png",
  ),
  GroceryItem(
    id: 6,
    name: "Chikken",
    description: "250gm, Priceg",
    price: 4.99,
    image: "$_groceryBase/chicken.png",
  ),
];

final List<GroceryItem> demoGroceryItemBeverages = <GroceryItem>[
  GroceryItem(
    id: 7,
    name: "Dite Coke",
    description: "355ml, Price",
    price: 1.99,
    image: "$_beveragesBase/diet_coke.png",
  ),
  GroceryItem(
    id: 8,
    name: "Sprite Can",
    description: "325ml, Price",
    price: 1.50,
    image: "$_beveragesBase/sprite.png",
  ),
  GroceryItem(
    id: 9,
    name: "Apple Juice",
    description: "2L, Price",
    price: 15.99,
    image: "$_beveragesBase/apple_and_grape_juice.png",
  ),
  GroceryItem(
    id: 10,
    name: "Orange Juice",
    description: "2L, Price",
    price: 1.50,
    image: "$_beveragesBase/orange_juice.png",
  ),
  GroceryItem(
    id: 11,
    name: "Coca Cola Can",
    description: "325ml, Price",
    price: 4.99,
    image: "$_beveragesBase/coca_cola.png",
  ),
  GroceryItem(
    id: 12,
    name: "Pepsi Can",
    description: "330ml, Price",
    price: 4.99,
    image: "$_beveragesBase/pepsi.png",
  ),
];

final List<GroceryItem> exclusiveOffers = [demoGroceryItems[0], demoGroceryItems[1]];

final List<GroceryItem> bestSelling = [demoGroceryItems[2], demoGroceryItems[3]];

final List<GroceryItem> groceries = [demoGroceryItems[4], demoGroceryItems[5]];
