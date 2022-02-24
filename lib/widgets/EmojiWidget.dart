import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmojiWidget extends StatelessWidget {

  final String imagePath;
  final String text;
  final int emojiRate;

  EmojiWidget({@required this.imagePath , @required this.text , this.emojiRate});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextButton(
        onPressed: (){
          print('emoji rate $emojiRate');
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
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