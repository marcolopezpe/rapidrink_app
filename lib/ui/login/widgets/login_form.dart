import 'package:flutter/material.dart';
import 'package:rapidrink_app/core/theme/app_colors.dart';
import 'package:rapidrink_app/ui/inicio/inicio_view.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String usuario = "";
    String contrasena = "";
    return Container(
      margin: const EdgeInsets.all(35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          TextField(
            style: const TextStyle(fontSize: 15, fontFamily: "OpenSans"),
            decoration: const InputDecoration(
              hintText: "Usuario",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            onChanged: (value) => usuario = value,
          ),
          const SizedBox(height: 20),
          TextField(
            obscureText: true,
            style: const TextStyle(
              fontSize: 15,
              fontFamily: "OpenSans",
            ),
            decoration: const InputDecoration(
              hintText: "Contrase\u{00F1}a",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            onChanged: (value) => contrasena = value,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                "Olvidaste tu Contrase\u{00F1}a?",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const InicioView(),
                ),
              );
            },
            child: Container(
              width: double.infinity,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.kPrimary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "INGRESAR",
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
      ),
    );
  }
}
