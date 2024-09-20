import 'package:chat_app/utils/commons/theme/custom_colors.dart';
import 'package:chat_app/providers/navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class NavIcon extends ConsumerWidget {
  final int pageNumber;

  NavIcon({
    super.key,
    required this.pageNumber,
  });

  Color setIconColor(int pageNumber, WidgetRef ref) {
    final int currentPage = ref.watch(navigationProvider);

    if (pageNumber == currentPage) {
      return Colors.black;
    } else {
      return CustomColors.lightPinkColor;
    }
  }

  final List<String> pageIconPaths = [
    "assets/images/nav_icons/Home.svg",
    "assets/images/nav_icons/Categories.svg",
    "assets/images/nav_icons/Cart.svg",
    "assets/images/nav_icons/Wishlist.svg",
    "assets/images/nav_icons/Profile.svg",
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      style: IconButton.styleFrom(
        highlightColor: Colors.transparent,
      ),
      onPressed: () {
        ref.read(navigationProvider.notifier).navigateToPage(pageNumber);
      },
      icon: SvgPicture.asset(
        pageIconPaths[pageNumber],
        colorFilter: ColorFilter.mode(
          setIconColor(pageNumber, ref),
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
