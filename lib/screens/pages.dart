import 'package:flutter/material.dart';
import 'package:flutter_application_2/data.dart';
import 'package:flutter_application_2/widgets/item.dart';

class Pages extends StatelessWidget {
  const Pages({super.key, required this.type});
  final String type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff463227),
        title: Text(type,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: ListView.builder(
        itemCount: data[type]!.length, // ! make sure that it is not null
        itemBuilder: (context, index) => Item(data: data[type]![index]), // ! make sure that it is not null
      ),
    );
  }
}
