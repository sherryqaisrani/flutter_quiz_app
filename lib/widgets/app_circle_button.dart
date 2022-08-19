import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppCircleButton extends StatelessWidget {
  final Widget icon;
  final Color? color;
  final VoidCallback onTap;
  final double? width;

  const AppCircleButton({
    Key? key,
    required this.icon,
    this.color,
    required this.onTap,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: CircleBorder(),
      child: InkWell(
        child: Icon(
          Icons.arrow_forward,
        ),
      ),
    );
  }
}
