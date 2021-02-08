import 'dart:js';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:udcd_task1/data/post_data.dart';

class PostItem extends StatelessWidget {

  PostData data;
  List<Color> colors = [
    Colors.amber,
    Colors.blue,
    Colors.tealAccent,
    Colors.cyanAccent,
  ];
  Random rand = Random();

  PostItem({ this.data });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(8.0),
          margin: EdgeInsets.all(16.0),
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: colors[rand.nextInt(colors.length)],
            borderRadius: BorderRadius.circular(999),
          ),
          child: Text(
            data.initialName
          ),
        ),
        Column(
          children: <Widget>[
            Text(data.title),
            SizedBox(height: 8.0,),
            Text(
              data.content,
              maxLines: 5,
            ),
          ],
        ),
        SizedBox(width: 8.0,),
        Text(data.date),
      ],
    );
  }
}
