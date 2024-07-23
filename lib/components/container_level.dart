import 'package:flutter/material.dart';

class ContainerLevel extends StatelessWidget {
  final Widget childs;
  final double heights;
  final double topDecoration;

  const ContainerLevel({
    super.key,
    required this.childs,
    this.heights = 0.15,
    this.topDecoration = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * heights,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 103, 57, 186),
        borderRadius: BorderRadius.all(Radius.circular(18)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(top: topDecoration),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 239, 235, 249),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
            bottomLeft: Radius.circular(18),
            bottomRight: Radius.circular(18),
          ),
        ),
        child: childs,
      ),
    );
  }
}