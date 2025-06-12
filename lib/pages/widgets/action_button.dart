import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final VoidCallback onTap;
  final Color? iconColor;
  final Color? containerColor;
  final Color? labelColor;
  final double? height;

  const ActionButton({
    Key? key,
    required this.iconPath,
    required this.label,
    required this.onTap,
    this.iconColor,
    this.containerColor = Colors.white,
    this.labelColor,
    this.height = 90,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: height,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  offset: const Offset(0, 4),
                  blurRadius: 15,
                  spreadRadius: 2,
                ),
              ],
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  containerColor!,
                  containerColor!.withOpacity(0.8),
                ],
              ),
            ),
            child: Image.asset(
              iconPath,
              color: iconColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: labelColor ?? Colors.grey.shade800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
