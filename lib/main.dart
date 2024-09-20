import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Index(),
    );
  }
}

// BACKGROUND COLOR
Color bgcolor1 = Color.fromRGBO(28, 51, 67, 1.0);

// COLOR THEME
Color primarycolor = Color.fromRGBO(246, 174, 45, 1.0);
Color secondarycolor = Color.fromRGBO(34, 71, 73, 1.0);
Color white = Colors.white;


// STARTING PAGE
class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: bgcolor1,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/Nature1.png'),
                      fit: BoxFit.cover,
                      opacity: .20
                  )
              ),
            ),
            Center(
              child: Container(
                width: double.infinity,
                height: 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 200,
                          child: Image(
                            image: AssetImage('images/LOGO.png')
                          ),
                        ),
                        Column(
                          children: [
                            Text('E-TERNAL',
                              style: TextStyle(
                                color: white,
                                fontSize: 65,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 2.5,
                              ),
                            ),
                            Text('Track and manage your energy\nusage efficiently',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: white,
                                fontSize: 17.23,
                                fontWeight: FontWeight.w800,
                              )
                            )
                          ],
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: primarycolor,
                        foregroundColor: white,
                        fixedSize: Size.fromWidth(233),
                        padding: EdgeInsets.symmetric(vertical: 13),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13)
                        )
                      ),
                      child: Text('Get Started',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500
                        )
                      )
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
