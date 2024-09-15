import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
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
        width: double.infinity,
        height: 60,
        color: onBackground,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.home,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.shopping_bag,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.heart,
                color: Colors.white,
              ),
            ),
          ],
        ),
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

  Widget shownePage() {
    MainController controller = Get.find();
    switch (controller.selectedIndex.value) {
      case 0:
        return const HomePage();
      case 1:
        return const HomePage();
      case 2:
        return const HomePage();
      default:
        return const HomePage();
    }
  }
}
