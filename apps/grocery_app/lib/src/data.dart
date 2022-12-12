import 'constants.dart';
import 'models/category.model.dart';
import 'models/product.model.dart';

// https://raw.githubusercontent.com/mosamuhana/grocery_app/main/resources/images/

const _assetsBaseUrl = 'assets/app_images';
const _networkBaseUrl =
    'https://raw.githubusercontent.com/mosamuhana/grocery_app/main/resources/images';
const _base = kIsNetworkImage ? _networkBaseUrl : _assetsBaseUrl;
const _categoriesBase = '$_base/categories';
const _productsBase = '$_base/products';

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

final List<Product> demoGroceryItems = <Product>[
  Product(
    id: 1,
    name: "Organic Bananas",
    description: "7pcs, Priceg",
    price: 4.99,
    image: "$_productsBase/banana.png",
    categoryId: 1,
  ),
  Product(
    id: 2,
    name: "Red Apple",
    description: "1kg, Priceg",
    price: 4.99,
    image: "$_productsBase/apple.png",
    categoryId: 1,
  ),
  Product(
    id: 3,
    name: "Bell Pepper Red",
    description: "1kg, Priceg",
    price: 4.99,
    image: "$_productsBase/pepper.png",
    categoryId: 1,
  ),
  Product(
    id: 4,
    name: "Ginger",
    description: "250gm, Priceg",
    price: 4.99,
    image: "$_productsBase/ginger.png",
    categoryId: 1,
  ),
  Product(
    id: 5,
    name: "Meat",
    description: "250gm, Priceg",
    price: 4.99,
    image: "$_productsBase/beef.png",
    categoryId: 3,
  ),
  Product(
    id: 6,
    name: "Chicken",
    description: "250gm, Priceg",
    price: 4.99,
    image: "$_productsBase/chicken.png",
    categoryId: 3,
  ),
];

final List<Product> demoGroceryItemBeverages = <Product>[
  Product(
    id: 7,
    name: "Dite Coke",
    description: "355ml, Price",
    price: 1.99,
    image: "$_productsBase/diet_coke.png",
    categoryId: 6,
  ),
  Product(
    id: 8,
    name: "Sprite Can",
    description: "325ml, Price",
    price: 1.50,
    image: "$_productsBase/sprite.png",
    categoryId: 6,
  ),
  Product(
    id: 9,
    name: "Apple Juice",
    description: "2L, Price",
    price: 15.99,
    image: "$_productsBase/apple_and_grape_juice.png",
    categoryId: 6,
  ),
  Product(
    id: 10,
    name: "Orange Juice",
    description: "2L, Price",
    price: 1.50,
    image: "$_productsBase/orange_juice.png",
    categoryId: 6,
  ),
  Product(
    id: 11,
    name: "Coca Cola Can",
    description: "325ml, Price",
    price: 4.99,
    image: "$_productsBase/coca_cola.png",
    categoryId: 6,
  ),
  Product(
    id: 12,
    name: "Pepsi Can",
    description: "330ml, Price",
    price: 4.99,
    image: "$_productsBase/pepsi.png",
    categoryId: 6,
  ),
];

final List<Product> exclusiveOffers = [demoGroceryItems[0], demoGroceryItems[1]];

final List<Product> bestSelling = [demoGroceryItems[2], demoGroceryItems[3]];

final List<Product> groceries = [demoGroceryItems[4], demoGroceryItems[5]];
