part of '../login_page.dart';

class _LoginRegisterButtons extends StatefulWidget {
  const _LoginRegisterButtons();

  @override
  State<_LoginRegisterButtons> createState() => __LoginRegisterButtonsState();
}

class __LoginRegisterButtonsState extends State<_LoginRegisterButtons> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      spacing: 10,
      runSpacing: 10,
      children: [
        RoundedButtonWithIcon(
          onTap: () {},
          width: .42.sw,
          color: const Color(0xFF4267B3),
          icon: CuidapetIcons.facebook,
          label: 'Facebook',
        ),
        RoundedButtonWithIcon(
          onTap: () {},
          width: .42.sw,
          color: const Color(0xFFE15031),
          icon: CuidapetIcons.google,
          label: 'Google',
        ),
        RoundedButtonWithIcon(
          onTap: () => Navigator.pushNamed(
            context,
            '/auth/register',
          ),
          width: .42.sw,
          color: context.primaryColor,
          icon: Icons.mail,
          label: 'Cadastre-se',
        ),
      ],
    );
  }
}
