import 'package:cuidapet_mobile/app/core/ui/icons/cuidapet_icons.dart';
import 'package:cuidapet_mobile/app/core/ui/widgets/cuidapet_default_button.dart';
import 'package:cuidapet_mobile/app/core/ui/widgets/cuidapet_textform_field.dart';
import 'package:cuidapet_mobile/app/core/ui/widgets/rounded_button_with_icon.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _testeEC = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CuidapetTextformField(
                label: 'login',
                obscureText: false,
                controller: _testeEC,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Valor obrigatório';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () => _formKey.currentState?.validate(),
                child: const Text('Validar'),
              ),
              RoundedButtonWithIcon(
                onTap: () {},
                label: 'Apple',
                width: 200,
                color: Colors.black,
                icon: CuidapetIcons.apple,
              ),
              RoundedButtonWithIcon(
                onTap: () {},
                label: 'Facebook',
                width: 200,
                color: Colors.blue,
                icon: CuidapetIcons.facebook,
              ),
              RoundedButtonWithIcon(
                onTap: () {},
                label: 'Google',
                width: 200,
                color: Colors.orange,
                icon: CuidapetIcons.google,
              ),
              CuidapetDefaultButton(
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Clicou'),
                  ),
                ),
                label: 'Entrar',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
