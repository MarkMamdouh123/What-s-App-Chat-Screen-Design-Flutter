import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  Message(
      {required this.text,
      required this.imagePath,
      required this.textDirection});
  String text;
  String imagePath;
  TextDirection textDirection;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        textDirection: textDirection,
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(imagePath),
          ),
          SizedBox(
            width: 22,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(22),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  border: Border.all(color: Colors.white, width: 2)),
              child: Text(text,
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
