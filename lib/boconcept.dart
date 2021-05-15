import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BoConcept extends StatefulWidget {
  const BoConcept({Key key}) : super(key: key);

  @override
  _BoConceptState createState() => _BoConceptState();
}

class _BoConceptState extends State<BoConcept> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(
              // 'https://image.freepik.com/free-photo/living-room-interior-design-scene-with-pink-chair-table-empty-green-wall_208753-169.jpg')),
              'https://image.freepik.com/free-photo/home-sofa-with-objects-cozy-decor-living-room_169016-5758.jpg')),
          //'https://image.freepik.com/free-photo/tidy-hall-with-white-couch_1203-1484.jpg')),
        ),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 30),
              child: RotatedBox(
                quarterTurns: 1,
                child: Text(
                  'BoConcept',
                  style: TextStyle(
                      fontSize: 70,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Positioned(
              bottom: 70,
              left: MediaQuery.of(context).size.width / 4 - 20,
              right: MediaQuery.of(context).size.width / 4 - 20,
              top: MediaQuery.of(context).size.height - 140,
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: MediaQuery.of(context).size.width - 170,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                    //color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextButton(
                    onPressed: () {
                      print('hello');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'View Gallery',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
