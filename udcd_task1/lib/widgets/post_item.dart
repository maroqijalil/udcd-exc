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

  PostItem({this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(16.0),
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: colors[rand.nextInt(colors.length)],
                borderRadius: BorderRadius.circular(999),
              ),
              child: Center(
                child: Text(
                  data.initialName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      data.title,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      data.content,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            Text(data.date),
          ],
        ),
        SizedBox(
          height: 6.0,
        ),
        SizedBox(
          height: 1,
          child: Container(
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 12.0,
        )
      ],
    );
  }
}
