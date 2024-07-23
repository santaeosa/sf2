import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.chevron_left,
                      size: 30.0,
                    ),
                    Text(
                      "Top News",
                      style: TextStyle(fontSize: 20.0),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.share,
                    ),
                    Icon(
                      Icons.bookmark,
                    ),
                    Icon(
                      Icons.more_vert,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              color: Colors.black,
              width: double.infinity,
              height: 1.0,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "LISTS",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Text("By "),
                      Text(
                        "Juan Lopez ",
                        style: TextStyle(
                          color: Colors.blueAccent,
                        ),
                      ),
                      Text("Forbes List"),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Hello "),
                      Text(
                        "Bold ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("world!"),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Image.asset(
                    "assets/img/picture3.jpeg",
                    height: 250.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
