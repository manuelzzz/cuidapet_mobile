import 'package:cuidapet_mobile/app/core/ui/extensions/size_screen_extension.dart';
import 'package:cuidapet_mobile/app/core/ui/extensions/theme_extension.dart';
import 'package:cuidapet_mobile/app/core/ui/icons/cuidapet_icons.dart';
import 'package:cuidapet_mobile/app/core/ui/widgets/cuidapet_logo_image.dart';
import 'package:cuidapet_mobile/app/core/ui/widgets/cuidapet_textform_field.dart';
import 'package:cuidapet_mobile/app/core/ui/widgets/rounded_button_with_icon.dart';
import 'package:flutter/material.dart';

part 'widgets/login_form.dart';
part 'widgets/login_register_buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              const CuidapetLogoImage(),
              const SizedBox(height: 10),
              const _LoginForm(),
              const SizedBox(height: 10),
              const _LoginRegisterButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
