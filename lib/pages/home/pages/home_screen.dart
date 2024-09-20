import 'package:chat_app/pages/home/widgets/ad_scroll_indicator.dart';
import 'package:chat_app/providers/home_categories_navigator.dart';
import 'package:chat_app/utils/commons/theme/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends ConsumerWidget {
  HomeScreen({super.key});

  final List<String> categoriesIconPaths = [
    "assets/images/home_categories_icons/Vector.svg",
    "assets/images/home_categories_icons/Vector (1).svg",
    "assets/images/home_categories_icons/Vector (2).svg",
    "assets/images/home_categories_icons/Group 309.svg",
    "assets/images/home_categories_icons/Vector (4).svg",
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0).copyWith(top: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hi, Welcome Back",
                      style: TextStyle(
                        color: CustomColors.lightPinkColor,
                        fontSize: 25,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Create spaces that bring joy",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
                Image.asset("assets/images/Bot-Search.png"),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 180,
              child: Image.asset(
                "assets/images/ads/ad1.png",
                fit: BoxFit.contain,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AdScrollIndicator(color: Colors.black),
                const SizedBox(
                  width: 5,
                ),
                AdScrollIndicator(color: CustomColors.lightPinkColor),
                const SizedBox(
                  width: 5,
                ),
                AdScrollIndicator(color: CustomColors.lightPinkColor),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Categories",
              style: TextStyle(
                fontSize: 20,
                color: CustomColors.deepPinkColor,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoriesIconPaths.length,
                itemBuilder: (context, index) {
                  final int currentIcon =
                      ref.watch(homeCategoriesNavigatorProvider);

                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        ref
                            .read(homeCategoriesNavigatorProvider.notifier)
                            .changeCategory(index);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: currentIcon == index
                              ? CustomColors.lightPinkColor
                              : CustomColors.inactiveIconColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SvgPicture.asset(
                          categoriesIconPaths[index],
                          fit: BoxFit.contain,
                          colorFilter: ColorFilter.mode(
                            currentIcon == index
                                ? CustomColors.deepPinkColor
                                : const Color(0xffdcbeb6),
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
