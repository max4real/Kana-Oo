import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kana_oo/modules/cart_page/v_cart_page.dart';
import 'package:kana_oo/modules/home_page/v_home_page.dart';
import 'package:kana_oo/modules/main_page/c_main.dart';
import 'package:kana_oo/services/c_theme_controller.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    MainController controller = Get.put(MainController());
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: background,
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: onBackground,
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.only(
            left: 15,
            right: 15,
            bottom: 15,
          ),
          height: 55,
          child: ValueListenableBuilder(
            valueListenable: controller.index_,
            builder: (context, value, child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    splashRadius: 5,
                    isSelected: value == 0 ? true : false,
                    selectedIcon: Icon(
                      Iconsax.home_1,
                      color: secondary,
                    ),
                    onPressed: () {
                      controller.index_.value = 0;
                    },
                    icon: const Icon(
                      Iconsax.home,
                      color: Colors.grey,
                    ),
                  ),
                  IconButton(
                    isSelected: value == 1 ? true : false,
                    selectedIcon: Icon(
                      Iconsax.shopping_bag,
                      color: secondary,
                    ),
                    onPressed: () {
                      controller.index_.value = 1;
                    },
                    icon: const Icon(
                      Iconsax.shopping_bag,
                      color: Colors.grey,
                    ),
                  ),
                  IconButton(
                    isSelected: value == 2 ? true : false,
                    selectedIcon: Icon(
                      Iconsax.heart,
                      color: secondary,
                    ),
                    onPressed: () {
                      controller.index_.value = 2;
                    },
                    icon: const Icon(
                      Iconsax.heart,
                      color: Colors.grey,
                    ),
                  ),
                  IconButton(
                    isSelected: value == 3 ? true : false,
                    selectedIcon: Icon(
                      Iconsax.setting,
                      color: secondary,
                    ),
                    onPressed: () {
                      controller.index_.value = 3;
                    },
                    icon: const Icon(
                      Iconsax.setting,
                      color: Colors.grey,
                    ),
                  ),
                ],
              );
            },
          )),
      body: ValueListenableBuilder(
        valueListenable: controller.index_,
        builder: (context, value, child) {
          return shownePage(value);
        },
      ),

      // bottomNavigationBar: Obx(() {
      //   return BottomNavigationBar(
      //     backgroundColor: onBackground,
      //     elevation: 0,
      //     currentIndex: controller.selectedIndex.value,
      //     onTap: (value) {
      //       controller.selectedIndex.value = value;
      //     },
      //     items: const [
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Iconsax.home,
      //           color: Colors.white,
      //         ),
      //         // label: "HOME",
      //         // selectedIcon: Icon(Iconsax.home),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Iconsax.shopping_bag,
      //           color: Colors.white,
      //         ),
      //         // label: "CART",
      //         // selectedIcon: Icon(Iconsax.shopping_bag),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Iconsax.heart,
      //           color: Colors.white,
      //         ),
      //         // label: "WISH LIST",
      //         // selectedIcon: Icon(Iconsax.heart),
      //       ),
      //     ],
      //   );
      // }),
      // body: Obx(
      //   () {
      //     return shownePage();
      //   },
      // ),
    );
  }

  Widget shownePage(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const InCart();
      case 2:
        return const HomePage();
      case 3:
        return const HomePage();
      default:
        return const HomePage();
    }
  }
}
