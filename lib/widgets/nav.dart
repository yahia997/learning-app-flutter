import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/pages.dart';

class Nav extends StatelessWidget {
  const Nav({super.key, required this.name, required this.color});
  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => Pages(type: name)));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        alignment: Alignment.centerLeft,
        color: color,
        child: Text(
          name,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
