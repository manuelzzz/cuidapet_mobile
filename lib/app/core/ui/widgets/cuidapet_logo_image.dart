import 'package:cuidapet_mobile/app/core/ui/extensions/size_screen_extension.dart';
import 'package:flutter/material.dart';

class CuidapetLogoImage extends StatelessWidget {
  const CuidapetLogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/logo.png',
        width: 162.w,
        fit: BoxFit.fill,
      ),
    );
  }
}
