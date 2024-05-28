import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: "Zoom Freak",
      description: "The forward-thinking design of his latest signature shoe",
      price: "236",
      imagePath: "lib/images/shoe3.png",
    ),
    Shoe(
      name: "Air Jordan",
      description: "TYou have got the hops and the speed lace up in shoes ",
      price: "236",
      imagePath: "lib/images/shoe4.png",
    ),
    Shoe(
      name: "Kd treys",
      description: "The forward-thinking design of his latest signature shoe",
      price: "236",
      imagePath: "lib/images/shoe5.png",
    ),
    Shoe(
      name: "Kyrie 6",
      description: "The forward-thinking design of his latest signature shoe",
      price: "236",
      imagePath: "lib/images/shoe6.png",
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
