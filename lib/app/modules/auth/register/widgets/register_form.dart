part of '../register_page.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CuidapetTextformField(label: 'login'),
        const SizedBox(height: 20),
        CuidapetTextformField(
          label: 'senha',
          obscureText: true,
        ),
        const SizedBox(height: 20),
        CuidapetTextformField(
          label: 'confirma senha',
          obscureText: true,
        ),
        const SizedBox(height: 20),
        CuidapetDefaultButton(
          onPressed: () {},
          label: 'Cadastrar',
        )
      ],
    );
  }
}
