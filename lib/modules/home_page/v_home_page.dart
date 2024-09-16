import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kana_oo/modules/home_page/c_home.dart';
import 'package:kana_oo/services/c_data_controller.dart';
import 'package:kana_oo/services/c_theme_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageController controller = Get.put(HomePageController());
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: onBackground),
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.menu,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "KanaOo",
                    style: TextStyle(color: secondary, fontSize: 20),
                  ),
                  const Spacer(),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: onBackground),
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const CircleAvatar(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      maxLines: 1,
                      onTapOutside: (event) {
                        dismissKeyboard();
                      },
                      cursorWidth: 1,
                      cursorColor: secondary,
                      cursorHeight: 15,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                      decoration: InputDecoration(
                        hintText: "Search",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: onBackground,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 15.0),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Iconsax.filter,
                      color: secondary,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1/1.4,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
