import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:rapidrink_app/core/theme/app_colors.dart';
import 'package:rapidrink_app/ui/carrito/carrito_view.dart';

class BarMenu extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const BarMenu(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.kPrimary,
      title: Text(title),
      actions: [
        Container(
          padding: const EdgeInsets.only(right: 10),
          child: Stack(
            children: [
              Center(
                child: SizedBox(
                  width: 60,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacement<void, void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const CarritoView(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.shopping_cart),
                  ),
                ),
              ),
              Positioned(
                right: 3,
                top: 3,
                child: Badge(
                  toAnimate: true,
                  shape: BadgeShape.circle,
                  padding: const EdgeInsets.all(7),
                  badgeColor: Colors.blue,
                  badgeContent:
                      const Text("2", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
