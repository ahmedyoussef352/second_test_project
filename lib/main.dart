import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Container(
        width: 650,
        height: 270,
        margin: EdgeInsets.only(top: 50, left: 10, right: 10),
        decoration: BoxDecoration(
            color: Colors.grey[350], borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.circular(20)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: FlightImagesAsset(),
                          width: 140,
                          height: 180,
                        ),
                        SizedBox(
                          width: 40,
                          height: 100,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('ahmed joo',
                                style: TextStyle(
                                  fontSize: 60,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text(
                              'Flutter Developer',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.verified,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.thumb_up,
                              color: Colors.blue,
                              size: 70,
                            ),
                            Text(
                              'like',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 200),
              width: 440,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Icon(
                          Icons.library_add,
                          color: Colors.white,
                          size: 50,
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          '  Follow    ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      onSurface: Colors.grey,
                      shadowColor: Colors.red,
                      elevation: 5,
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2))),
                    ),
                    onPressed: () {
                      print('pressed');
                    },
                  ),
                  TextButton(
                    child: Icon(
                      Icons.question_answer_outlined,
                      size: 50,
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey,
                      onSurface: Colors.grey,
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2))),
                    ),
                    onPressed: () {
                      print('pressed');
                    },
                  ),
                  TextButton(
                    child: Text(
                      ' ... ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey,
                      onSurface: Colors.grey,
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2))),
                    ),
                    onPressed: () {
                      print('pressed');
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  ));
}

class Imagepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class FlightImagesAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/1.jpg');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}
