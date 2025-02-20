import 'package:flutter/material.dart';
import 'package:spotify_app/core/theme/app_pallete.dart';

class AuthGradientButton extends StatelessWidget {
  const AuthGradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient:  LinearGradient(
          colors: [
            Pallete.gradient1,
            Pallete.gradient2
          ],
          begin : Alignment.bottomLeft,
          end   : Alignment.topRight
        ),
        borderRadius: BorderRadius.circular(7.0)
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: Colors.transparent,
          shadowColor:  Pallete.transparentColor
        ),
        child: Text("Sing up", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
      ),
    );
  }
}