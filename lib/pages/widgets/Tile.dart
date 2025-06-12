import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final String imgPath;
  final String title;
  final String subtitle;
  final icon;

  const Tile({
    super.key,
    required this.imgPath,
    required this.title,
    required this.subtitle,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child:
        Padding(padding: EdgeInsets.all(20),
          child:
          ListTile(
            leading: Image.asset(imgPath),
            title: Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Text(subtitle),
            trailing: Icon(
              icon,
              size: 40,
            ),
          ),
        )
    );
  }
}
