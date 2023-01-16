import 'package:flutter/material.dart';
class Button1 extends StatelessWidget {
  final String name;
  final Color color;
  final VoidCallback onPress;
  const Button1({Key? key,required this.name, required this.color,required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onPress,
        child: Container(
          height: 70,
          width: 70.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
          child: Center(
            child: Text(name,
              style: const TextStyle(
                fontSize: 30.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
