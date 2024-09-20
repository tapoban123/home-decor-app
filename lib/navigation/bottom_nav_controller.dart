import 'package:chat_app/navigation/widgets/bottom_nav_bar.dart';
import 'package:chat_app/providers/navigation_provider.dart';
import 'package:chat_app/utils/commons/theme/custom_colors.dart';
import 'package:chat_app/utils/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavController extends ConsumerWidget {
  const BottomNavController({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        shadowColor: Colors.transparent,
        backgroundColor: CustomColors.whiteColor,
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: IndexedStack(
        index: ref.watch(navigationProvider),
        children: pages,
      ),
    );
  }
}
