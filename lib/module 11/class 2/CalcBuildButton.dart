import 'package:flutter/material.dart';

class CalcBuildButton extends StatelessWidget {

  String text;
  Color ? color;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(24),
            backgroundColor: color ?? Colors.grey[800],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: onClick,
          child: Text(text, style: TextStyle(
            color: Colors.white,
            fontSize: 25
          ),),
        ),
      ),
    );
  }

   CalcBuildButton({
    super.key, required this.onClick, required this.text, this.color,
  });
}
