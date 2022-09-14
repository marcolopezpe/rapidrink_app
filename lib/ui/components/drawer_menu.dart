import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:rapidrink_app/core/theme/app_colors.dart';
import 'package:rapidrink_app/ui/carrito/carrito_view.dart';
import 'package:rapidrink_app/ui/catalogo/catalogo_view.dart';
import 'package:rapidrink_app/ui/categorias/categorias_view.dart';
import 'package:rapidrink_app/ui/inicio/inicio_view.dart';
import 'package:rapidrink_app/ui/login/login_view.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.kPrimary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70, bottom: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/user.png"),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Marco Lopez",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "marcolopezpe@outlook.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 20),
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.pushReplacement<void, void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const InicioView(),
                          ),
                        );
                      },
                      leading: const Icon(Icons.home),
                      title: const Text(
                        "Inicio",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.pushReplacement<void, void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const CatalogoView(),
                          ),
                        );
                      },
                      leading: const Icon(Icons.list),
                      title: const Text(
                        "Cat\u{00E1}logo",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.pushReplacement<void, void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const CategoriasView(),
                          ),
                        );
                      },
                      leading: const Icon(Icons.category),
                      title: const Text(
                        "Categor\u{00ED}as",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.pushReplacement<void, void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const CarritoView(),
                          ),
                        );
                      },
                      leading: const Icon(Icons.shopping_cart),
                      title: const Text(
                        "Carrito",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Badge(
                        toAnimate: true,
                        shape: BadgeShape.circle,
                        padding: const EdgeInsets.all(7),
                        badgeColor: Colors.blue,
                        badgeContent: const Text("2",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    const Divider(indent: 15, endIndent: 15),
                    const ListTile(
                      leading: Icon(Icons.settings),
                      title: Text(
                        "Configuraci\u{00F3}n",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.pushReplacement<void, void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const LoginView(),
                          ),
                        );
                      },
                      leading: const Icon(Icons.exit_to_app),
                      title: const Text(
                        "Cerrar Sesi\u{00F3}n",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
