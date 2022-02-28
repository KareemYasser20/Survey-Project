import 'package:flutter/material.dart';

class EmojiWidget extends StatelessWidget {

  final String imagePath;
  final String text;
  final int emojiRate;
  final Function onClicked;
  final Color containerColor;

  EmojiWidget({@required this.imagePath , @required this.text , this.emojiRate , @required this.onClicked, this.containerColor });

  @override
  Widget build(BuildContext context) {

    return Flexible(
      child: TextButton(
        onPressed: onClicked,
        child: Container(
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage(imagePath),
              ),
              Text(text , style: TextStyle(color: Colors.black)),


            ],
          ),
        ),
      ),
    );





  }
}