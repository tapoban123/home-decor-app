import 'package:chat_app/pages/cart/pages/cart.dart';
import 'package:chat_app/pages/categories/pages/categories.dart';
import 'package:chat_app/pages/home/pages/home_screen.dart';
import 'package:chat_app/pages/profile/pages/profile.dart';
import 'package:chat_app/pages/wishlist/pages/wishlist.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [
  Pages.homePage,
  Pages.categoriesPage,
  Pages.cartPage,
  Pages.wishlistPage,
  Pages.profilePage,
];

class Pages {
  static Widget homePage = HomeScreen();
  static Widget categoriesPage = const CategoriesScreen();
  static Widget cartPage = const CartScreen();
  static Widget wishlistPage = const WishlistScreen();
  static Widget profilePage = const ProfileScreen();
}
