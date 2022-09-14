import 'package:flutter/material.dart';
import 'package:rapidrink_app/ui/login/widgets/app_logo.dart';
import 'package:rapidrink_app/ui/login/widgets/login_form.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          AppLogo(),
          LoginForm()
        ],
      ),
    );
  }
}
