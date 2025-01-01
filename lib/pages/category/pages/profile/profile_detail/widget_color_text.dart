import 'package:flutter/material.dart';

class GradientTextWidget extends StatelessWidget {
  final String text;
  final TextStyle style;

  const GradientTextWidget({
    Key? key,
    required this.text,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return const LinearGradient(
          colors: [
            Color(0xFF00BD61),
            Color(0xFF848484),
            Color(0xFFC82828),
            Color(0xFFCACACA),
            Color(0xFFDFDFDF),
          ],
          stops: [0.3155, 0.4841, 0.6668, 0.7849, 0.8776],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ).createShader(bounds);
      },
      blendMode: BlendMode.srcIn,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
