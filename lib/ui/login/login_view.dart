import 'package:flutter/material.dart';
import 'package:rapidrink_app/core/theme/app_colors.dart';
import 'package:rapidrink_app/ui/login/widgets/content.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: const [
          Content(),
        ],
      ),
    );
  }
}
