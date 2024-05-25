import 'package:flutter/material.dart';

class StIconButton extends StatelessWidget {
  final void Function() onTap;
  final IconData icon;

  const StIconButton({required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(icon: Icon(icon), onPressed: onTap);
  }
}
