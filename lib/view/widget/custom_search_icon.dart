import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.07),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: const Center(
          child: Icon(
            Icons.search,
            size: 30,
          ),
        ),
      ),
    );
  }
}
