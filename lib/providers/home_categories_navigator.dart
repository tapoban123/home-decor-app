import 'package:flutter_riverpod/flutter_riverpod.dart';

StateNotifierProvider<HomeCategoriesNavigatorNotifier, int>
    homeCategoriesNavigatorProvider = StateNotifierProvider(
  (ref) => HomeCategoriesNavigatorNotifier(),
);

class HomeCategoriesNavigatorNotifier extends StateNotifier<int> {
  HomeCategoriesNavigatorNotifier() : super(0);

  void changeCategory(int number) {
    state = number;
  }
}
