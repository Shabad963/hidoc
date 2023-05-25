
import 'package:flutter/material.dart';

class DesignedWidget extends StatelessWidget {
  const DesignedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        height: 190,
        width: 150,
        decoration: const BoxDecoration(
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(200),
          ),
        ),
      ),
    );
  }
}

class CircleOrange extends StatelessWidget {
  const CircleOrange({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 150,
      decoration: const BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(200),
        ),
      ),
    );
  }
}
