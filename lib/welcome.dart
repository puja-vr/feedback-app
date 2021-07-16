import 'package:feedback_app/rate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Feedback App',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.green[700]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(height: 1),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  "The Disaster Café",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.green[100],
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montez',
                  ),
                ),
              ),
            ),
            //SizedBox(height: 10),
            Column(
              children: [
                Container(
                  width: 400,
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Image.asset(
                    'assets/landscape.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(height: 15),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        width: 200,
                        padding: const EdgeInsets.fromLTRB(22, 0, 8, 0),
                        child: Image.asset(
                          'assets/person.jpg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.fromLTRB(8, 0, 22, 0),
                        child: Image.asset(
                          'assets/coffee.jpg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ]),
              ],
            ),
            //SizedBox(height: 20),
            Container(
              color: Colors.green[200],
              height: 110,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Text(
                    "Welcome to our Feedback App!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.green[800],
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'PTSans',
                    ),
                  ),
                ),
              ),
            ),
            //SizedBox(height: 15),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Text(
                  "Please rate between 1 to 5",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.green[100],
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'PTSans',
                  ),
                ),
              ),
            ),
            //SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 10,
                padding: EdgeInsets.fromLTRB(40.0, 6.0, 40.0, 6.0),
              ),
              onPressed: () {
                Get.to(Rating());
              },
              child: Text(
                'Start',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'PTSans',
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
