import 'package:flutter/material.dart';
import 'package:rapidrink_app/core/theme/app_colors.dart';
import 'package:rapidrink_app/ui/carrito/widgets/productos_agregados.dart';
import 'package:rapidrink_app/ui/carrito/widgets/sub_total.dart';
import 'package:rapidrink_app/ui/components/bar_menu.dart';
import 'package:rapidrink_app/ui/components/drawer_menu.dart';

class CarritoView extends StatelessWidget {
  const CarritoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: const BarMenu("Carrito de Compras"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SubTotal(),
            const SizedBox(height: 10),
            const ProductosAgregados(),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.kPrimary,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      "SEGUIR COMPRANDO",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      "IR A PAGAR",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
