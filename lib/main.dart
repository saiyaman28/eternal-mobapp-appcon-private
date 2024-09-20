import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
Color bgcolor2 = Color.fromRGBO(200, 233, 233, 1.0);

// COLOR THEME
Color primarycolor = Color.fromRGBO(246, 174, 45, 1.0);
Color secondarycolor = Color.fromRGBO(34, 71, 73, 1.0);
Color white = Colors.white;

String today = DateFormat('d MMM y').format(DateTime.now());

// HEADER
double appbarheight = 100;

AppBar header({required BuildContext context, bool automaticallyImplyLeading = false, String pagetitle = ''}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    toolbarHeight: 90,
    automaticallyImplyLeading: automaticallyImplyLeading,
    leading: automaticallyImplyLeading ? Container(
      padding: EdgeInsets.fromLTRB(13, 18, 0, 0),
      child: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        iconSize: 40, // Increase the icon size
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ) : null,
    centerTitle: true,
    title: Container(
        padding: EdgeInsets.only(top: 18),
        child: Text(pagetitle,
          style: TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.3,
              height: 1.2
          ),
        )
    ),
  );
}

// NAVBAR FUNCTION
class navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 100,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
              child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.house_outlined, size: 40),
                      Text('Home',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600
                        ),
                      )
                    ],
                  )
              )
          ),
          Expanded(
              child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Monitor()),
                    );
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.bar_chart_outlined, size: 40),
                      Text('Monitor',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600
                        ),
                      )
                    ],
                  )
              )
          ),
          Expanded(
              child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Notifications()),
                    );
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.notifications_none_outlined, size: 40),
                      Text('Notification',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600
                        ),
                      )
                    ],
                  )
              )
          ),
          Expanded(
              child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Menu()),
                    );
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person_outline, size: 40),
                      Text('Menu',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600
                          )
                      )
                    ],
                  )
              )
          ),
        ],
      ),
    );
  }
}

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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SplashScreen1()),
                        );
                      },
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

class SplashScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor1,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/Nature2.png'),
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
                  Container(
                      width: 253,
                      child: Image(
                          image: AssetImage('images/splash-screen1.png')
                      )
                  ),
                  Container(
                    height: 213,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('You can control your\ndevices within the app',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: white,
                              fontSize: 23.23,
                              fontWeight: FontWeight.w800,
                            )
                        ),
                        Container(
                          width: 89,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.circle_rounded,
                                color: white,
                                size: 18,
                              ),
                              Icon(Icons.circle_rounded,
                                color: Colors.white54,
                                size: 18,
                              ),
                              Icon(Icons.circle_rounded,
                                color: Colors.white54,
                                size: 18,
                              )
                            ],
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SplashScreen2()),
                              );
                            },
                            style: TextButton.styleFrom(
                                backgroundColor: primarycolor,
                                foregroundColor: white,
                                fixedSize: Size.fromWidth(233),
                                padding: EdgeInsets.symmetric(vertical: 13),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13)
                                )
                            ),
                            child: Text('Next',
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w500
                                )
                            )
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SplashScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor1,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/Nature2.png'),
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
                  Container(
                      width: 253,
                      child: Image(
                          image: AssetImage('images/splash-screen2.png')
                      )
                  ),
                  Container(
                    height: 213,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Set your own budget and\nsave more every month!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: white,
                              fontSize: 23.23,
                              fontWeight: FontWeight.w800,
                            )
                        ),
                        Container(
                          width: 89,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.circle_rounded,
                                color: Colors.white54,
                                size: 18,
                              ),
                              Icon(Icons.circle_rounded,
                                color: white,
                                size: 18,
                              ),
                              Icon(Icons.circle_rounded,
                                color: Colors.white54,
                                size: 18,
                              )
                            ],
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SplashScreen3()),
                              );
                            },
                            style: TextButton.styleFrom(
                                backgroundColor: primarycolor,
                                foregroundColor: white,
                                fixedSize: Size.fromWidth(233),
                                padding: EdgeInsets.symmetric(vertical: 13),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13)
                                )
                            ),
                            child: Text('Next',
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w500
                                )
                            )
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SplashScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor1,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/Nature2.png'),
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
                  Container(
                      height: 253,
                      child: Image(
                          image: AssetImage('images/splash-screen3.png')
                      )
                  ),
                  Container(
                    height: 213,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('You can track your\nelectricity usage',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: white,
                              fontSize: 23.23,
                              fontWeight: FontWeight.w800,
                            )
                        ),
                        Container(
                          width: 89,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.circle_rounded,
                                color: Colors.white54,
                                size: 18,
                              ),
                              Icon(Icons.circle_rounded,
                                color: Colors.white54,
                                size: 18,
                              ),
                              Icon(Icons.circle_rounded,
                                color: white,
                                size: 18,
                              )
                            ],
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Login()),
                              );
                            },
                            style: TextButton.styleFrom(
                                backgroundColor: primarycolor,
                                foregroundColor: white,
                                fixedSize: Size.fromWidth(233),
                                padding: EdgeInsets.symmetric(vertical: 13),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13)
                                )
                            ),
                            child: Text('Next',
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w500
                                )
                            )
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Login extends StatefulWidget {
  Login({super.key});
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgcolor1,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/Nature1.png'),
                          fit: BoxFit.cover,
                          opacity: .2)
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 380,
                        padding: EdgeInsets.only(top: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 153,
                              child: Image(
                                  image: AssetImage('images/LOGO.png')
                              ),
                            ),
                            Container(
                              width: 389,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Hello.',
                                    style: TextStyle(
                                      color: white,
                                      height: 1.3,
                                      fontSize: 69,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 3.3,
                                    ),
                                  ),
                                  Text('User!',
                                    style: TextStyle(
                                      color: primarycolor,
                                      height: 1,
                                      fontSize: 50,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 3.3,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 489,
                        decoration: BoxDecoration(
                            color: bgcolor2,
                            borderRadius: BorderRadius.vertical(top: Radius.circular(40))
                        ),
                        padding: EdgeInsets.fromLTRB(46, 40, 46, 46),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 300,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Login',
                                    style: TextStyle(
                                        fontSize: 43,
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: 1.3
                                    ),
                                  ),
                                  Container(
                                    height: 220,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            TextField(
                                              decoration: InputDecoration(
                                                hintText: 'Email',
                                                filled: true,
                                                fillColor: white,
                                                contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 28),
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(8),
                                                  borderSide: BorderSide.none,
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(8),
                                                  borderSide: BorderSide.none,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 18),
                                            TextField(
                                              obscureText: true,
                                              decoration: InputDecoration(
                                                hintText: 'Password',
                                                filled: true,
                                                fillColor: white,
                                                contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 28),
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(8),
                                                  borderSide: BorderSide.none,
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(8),
                                                  borderSide: BorderSide.none,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => Home()),
                                              );
                                            },
                                            style: TextButton.styleFrom(
                                                backgroundColor: primarycolor,
                                                foregroundColor: white,
                                                fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
                                                padding: EdgeInsets.symmetric(vertical: 13),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(13)
                                                )
                                            ),
                                            child: Text('Submit',
                                                style: TextStyle(
                                                    fontSize: 23,
                                                    fontWeight: FontWeight.w400
                                                )
                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 65,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => ForgetPass()),
                                      );
                                    },
                                    child: Text(
                                      "Forgot Password?",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: primarycolor
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Don't have an account? ",
                                          style: TextStyle(
                                            fontSize: 18,
                                          )
                                      ),
                                      InkWell(
                                        onTap: (){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => SignUp()),
                                          );
                                        },
                                        child: Text(
                                          "Sign up",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: primarycolor
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}

class SignUp extends StatefulWidget {
  SignUp({super.key});
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  bool register_isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgcolor2,
        appBar: header(context: context, automaticallyImplyLeading: true),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 700,
                padding: EdgeInsets.symmetric(horizontal: 23),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Sign Up',
                                style: TextStyle(
                                    fontSize: 43,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 1.3,
                                    height: 1.2
                                ),
                              ),
                              Text('Create your account here',
                                  style: TextStyle(
                                    color: secondarycolor,
                                    fontSize: 17.23,
                                    fontWeight: FontWeight.w800,
                                  )
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 23),
                        Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'First Name',
                                filled: true,
                                fillColor: white,
                                contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 28),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 18),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Last Name',
                                filled: true,
                                fillColor: white,
                                contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 28),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 18),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Email',
                                filled: true,
                                fillColor: white,
                                contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 28),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 18),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Home Address',
                                filled: true,
                                fillColor: white,
                                contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 28),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 18),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                filled: true,
                                fillColor: white,
                                contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 28),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 18),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Confirm Password',
                                filled: true,
                                fillColor: white,
                                contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 28),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Theme(
                        data: Theme.of(context).copyWith(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          checkboxTheme: CheckboxThemeData(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              side: BorderSide(
                                  color: Colors.transparent
                              ),
                              fillColor: MaterialStateProperty.all(white)
                          ),
                        ),
                        child: CheckboxListTile(
                          title: Text('I agree to the terms and conditions',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                height: 1
                            ),
                          ),
                          value: register_isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              register_isChecked = value ?? false;  // Update the state
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: primarycolor,
                          contentPadding: EdgeInsets.zero,
                        )
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: primarycolor,
                            foregroundColor: white,
                            fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
                            padding: EdgeInsets.symmetric(vertical: 13),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13)
                            )
                        ),
                        child: Text('Submit',
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w400
                            )
                        )
                    )
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}

class ForgetPass extends StatefulWidget {
  ForgetPass({super.key});
  @override
  ForgetPassState createState() => ForgetPassState();
}

class ForgetPassState extends State<ForgetPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgcolor2,
        appBar: header(context: context, automaticallyImplyLeading: true),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height - appbarheight - (appbarheight/7),
            padding: EdgeInsets.symmetric(horizontal: 23),
            child: Center(
              child: Container(
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Forget Password',
                                style: TextStyle(
                                    fontSize: 43,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 1.3,
                                    height: 1.2
                                ),
                              ),
                              Text('Don’t worry about your account',
                                  style: TextStyle(
                                    color: secondarycolor,
                                    fontSize: 17.23,
                                    fontWeight: FontWeight.w800,
                                  )
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 23),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            filled: true,
                            fillColor: white,
                            contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 28),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: primarycolor,
                            foregroundColor: white,
                            fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
                            padding: EdgeInsets.symmetric(vertical: 13),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13)
                            )
                        ),
                        child: Text('Submit',
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w400
                            )
                        )
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}

class Home extends StatefulWidget {
  Home({super.key});
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgcolor2,
        bottomNavigationBar: navbar(),
        body: SingleChildScrollView(
          child: Container(),
        )
    );
  }
}

class Monitor extends StatefulWidget {
  Monitor({super.key});
  @override
  MonitorState createState() => MonitorState();
}

class MonitorState extends State<Monitor> {
  String Selected = 'Daily';
  final List<String> DropDownItems = ['Daily', 'Weekly', 'Monthly'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(context: context, pagetitle: 'Monitor'),
        backgroundColor: bgcolor2,
        bottomNavigationBar: navbar(),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.fromLTRB(23, 0, 23, 23),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(13, 13, 13, 18),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                    ),
                    child: PopupMenuButton<String>(
                      initialValue: Selected,
                      color: primarycolor,
                      constraints: BoxConstraints.expand(
                          width: MediaQuery.of(context).size.width - 46,
                          height: 150
                      ),
                      offset: Offset(13, 65),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(bottom: Radius.circular(13))
                      ),
                      onSelected: (String newValue) {
                        setState(() {
                          Selected = newValue;
                        });
                      },
                      itemBuilder: (BuildContext context) {
                        return DropDownItems.map((String value) {
                          return PopupMenuItem<String>(
                            value: value,
                            child: Text(value,
                              style: TextStyle(
                                color: white,
                                fontSize: 17.23,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          );
                        }).toList();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Selected,
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w800,
                                  height: 1.2,
                                ),
                              ),
                              Text(
                                today,
                                style: TextStyle(
                                  fontSize: 17.23,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                            size: 43,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 13),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                    ),
                  ),
                  SizedBox(height: 13),
                  Container(
                    child: Wrap(
                      spacing: 13,
                      runSpacing: 13,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .434,
                          height: 170,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.all(Radius.circular(13)),
                          ),
                          padding: EdgeInsets.fromLTRB(13, 13, 13, 18.5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: primarycolor,
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                ),
                                child: Icon(Icons.mode_fan_off,
                                  color: white,
                                  size: 30,
                                ),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Electric Fan',
                                        style: TextStyle(
                                          fontSize: 20.23,
                                          fontWeight: FontWeight.w800,
                                        )
                                    ),
                                    SizedBox(height: 6),
                                    Text('Total Usage',
                                        style: TextStyle(
                                            fontSize: 15.23,
                                            fontWeight: FontWeight.w500,
                                            height: 1
                                        )
                                    ),
                                    Text('150 kWh',
                                        style: TextStyle(
                                            fontSize: 23.23,
                                            fontWeight: FontWeight.w700,
                                            height: 1
                                        )
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * .434,
                          height: 170,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.all(Radius.circular(13)),
                          ),
                          padding: EdgeInsets.fromLTRB(13, 13, 13, 18.5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: primarycolor,
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                ),
                                child: Icon(Icons.computer_sharp,
                                  color: white,
                                  size: 30,
                                ),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Computer',
                                        style: TextStyle(
                                          fontSize: 20.23,
                                          fontWeight: FontWeight.w800,
                                        )
                                    ),
                                    SizedBox(height: 6),
                                    Text('Total Usage',
                                        style: TextStyle(
                                            fontSize: 15.23,
                                            fontWeight: FontWeight.w500,
                                            height: 1
                                        )
                                    ),
                                    Text('100 kWh',
                                        style: TextStyle(
                                            fontSize: 23.23,
                                            fontWeight: FontWeight.w700,
                                            height: 1
                                        )
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * .434,
                          height: 170,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.all(Radius.circular(13)),
                          ),
                          padding: EdgeInsets.fromLTRB(13, 13, 13, 18.5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: primarycolor,
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                ),
                                child: Icon(Icons.lightbulb_sharp,
                                  color: white,
                                  size: 30,
                                ),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Bulb',
                                        style: TextStyle(
                                          fontSize: 20.23,
                                          fontWeight: FontWeight.w800,
                                        )
                                    ),
                                    SizedBox(height: 6),
                                    Text('Total Usage',
                                        style: TextStyle(
                                            fontSize: 15.23,
                                            fontWeight: FontWeight.w500,
                                            height: 1
                                        )
                                    ),
                                    Text('50 kWh',
                                        style: TextStyle(
                                            fontSize: 23.23,
                                            fontWeight: FontWeight.w700,
                                            height: 1
                                        )
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * .434,
                          height: 170,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.all(Radius.circular(13)),
                          ),
                          padding: EdgeInsets.fromLTRB(13, 13, 13, 18.5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: primarycolor,
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                ),
                                child: Icon(Icons.charging_station,
                                  color: white,
                                  size: 30,
                                ),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Charger',
                                        style: TextStyle(
                                          fontSize: 20.23,
                                          fontWeight: FontWeight.w800,
                                        )
                                    ),
                                    SizedBox(height: 6),
                                    Text('Total Usage',
                                        style: TextStyle(
                                            fontSize: 15.23,
                                            fontWeight: FontWeight.w500,
                                            height: 1
                                        )
                                    ),
                                    Text('50 kWh',
                                        style: TextStyle(
                                            fontSize: 23.23,
                                            fontWeight: FontWeight.w700,
                                            height: 1
                                        )
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
          ),
        )
    );
  }
}

class Notifications extends StatefulWidget {
  Notifications({super.key});
  @override
  NotificationState createState() => NotificationState();
}

class NotificationState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(context: context, pagetitle: 'Notification'),
        backgroundColor: bgcolor2,
        bottomNavigationBar: navbar(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(23, 0, 23, 23),
            child: Container(
              padding: EdgeInsets.fromLTRB(13, 13, 13, 23),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.all(Radius.circular(13)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 85,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 1)
                        )
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            color: primarycolor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(Icons.newspaper_rounded, color: white, size: 43),
                        ),
                        SizedBox(width: 20),
                        Text('Your monthly bill is close to due',
                          style: TextStyle(
                              fontSize: 18.23,
                              fontWeight: FontWeight.w500,
                              height: 1.2
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 85,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 1)
                        )
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(Icons.warning_rounded, color: white, size: 43),
                        ),
                        SizedBox(width: 20),
                        Text('Unidentified Person has been\nusing your energy',
                          style: TextStyle(
                              fontSize: 18.23,
                              fontWeight: FontWeight.w500,
                              height: 1.2
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 85,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 1)
                        )
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            color: primarycolor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(Icons.newspaper_rounded, color: white, size: 43),
                        ),
                        SizedBox(width: 20),
                        Text('Your monthly bill is close to due',
                          style: TextStyle(
                              fontSize: 18.23,
                              fontWeight: FontWeight.w500,
                              height: 1.2
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 85,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 1)
                        )
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            color: primarycolor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(Icons.newspaper_rounded, color: white, size: 43),
                        ),
                        SizedBox(width: 20),
                        Text('Your monthly bill is close to due',
                          style: TextStyle(
                              fontSize: 18.23,
                              fontWeight: FontWeight.w500,
                              height: 1.2
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}

class Menu extends StatefulWidget {
  Menu({super.key});
  @override
  MenuState createState() => MenuState();
}

class MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(context: context, pagetitle: 'Menu'),
        backgroundColor: bgcolor2,
        bottomNavigationBar: navbar(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(23, 13, 23, 23),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 89,
                        height: 89,
                        decoration: BoxDecoration(
                            border: Border.all(width: 5),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Icon(Icons.person,
                            size: 80
                        )
                    ),
                    SizedBox(width: 23),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Carl Andre Interino',
                            style: TextStyle(
                                fontSize: 28.23,
                                fontWeight: FontWeight.w800,
                                height: 1.2
                            )
                        ),
                        Text('Baesa, Quezon City',
                            style: TextStyle(
                              color: secondarycolor,
                              fontSize: 18.23,
                              fontWeight: FontWeight.w600,
                            )
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 33),
                Container(
                  padding: EdgeInsets.fromLTRB(13, 6.5, 13, 23),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 60,
                          padding: EdgeInsets.symmetric(horizontal: 13),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 1)
                              )
                          ),
                          child: Row(
                            children: [
                              Text('Edit Profile',
                                style: TextStyle(
                                    fontSize: 18.23,
                                    fontWeight: FontWeight.w800,
                                    height: 1.2
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BudgetManaging()),
                          );
                        },
                        child: Container(
                          height: 60,
                          padding: EdgeInsets.symmetric(horizontal: 13),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 1)
                              )
                          ),
                          child: Row(
                            children: [
                              Text('Budget Managing',
                                style: TextStyle(
                                    fontSize: 18.23,
                                    fontWeight: FontWeight.w800,
                                    height: 1.2
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Home()),
                          // );
                        },
                        child: Container(
                          height: 60,
                          padding: EdgeInsets.symmetric(horizontal: 13),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 1)
                              )
                          ),
                          child: Row(
                            children: [
                              Text('Device Timer',
                                style: TextStyle(
                                    fontSize: 18.23,
                                    fontWeight: FontWeight.w800,
                                    height: 1.2
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Home()),
                          // );
                        },
                        child: Container(
                          height: 60,
                          padding: EdgeInsets.symmetric(horizontal: 13),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 1)
                              )
                          ),
                          child: Row(
                            children: [
                              Text('Privacy & Security',
                                style: TextStyle(
                                    fontSize: 18.23,
                                    fontWeight: FontWeight.w800,
                                    height: 1.2
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: Container(
                          height: 60,
                          padding: EdgeInsets.symmetric(horizontal: 13),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 1)
                              )
                          ),
                          child: Row(
                            children: [
                              Text('Logout',
                                style: TextStyle(
                                    fontSize: 18.23,
                                    fontWeight: FontWeight.w800,
                                    height: 1.2
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}

class BudgetManaging extends StatefulWidget {
  BudgetManaging({super.key});
  @override
  BudgetManagingState createState() => BudgetManagingState();
}

class EditProfile extends StatefulWidget {
  EditProfile({super.key});
  @override
  EditProfileState createState() => EditProfileState();
}

class EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(context: context, pagetitle: 'Edit Profile', automaticallyImplyLeading: true),
        backgroundColor: bgcolor2,
        bottomNavigationBar: navbar(),
        body: SingleChildScrollView(
          child: Container(
            height: 450,
            padding: EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    TextField(
                      controller: TextEditingController()..text = 'Carl Andre',
                      onChanged: (text) => {},
                      decoration: InputDecoration(
                        hintText: 'First Name',
                        filled: true,
                        fillColor: white,
                        contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 28),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                    TextField(
                      controller: TextEditingController()..text = 'Interino',
                      onChanged: (text) => {},
                      decoration: InputDecoration(
                        hintText: 'Last Name',
                        filled: true,
                        fillColor: white,
                        contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 28),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                    TextField(
                      controller: TextEditingController()..text = 'carlpogi@gmail.com',
                      onChanged: (text) => {},
                      decoration: InputDecoration(
                        hintText: 'Email',
                        filled: true,
                        fillColor: white,
                        contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 28),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                    TextField(
                      controller: TextEditingController()..text = 'AMA University',
                      onChanged: (text) => {},
                      decoration: InputDecoration(
                        hintText: 'Home Address',
                        filled: true,
                        fillColor: white,
                        contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 28),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ],
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Menu()),
                      );
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: primarycolor,
                        foregroundColor: white,
                        fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
                        padding: EdgeInsets.symmetric(vertical: 13),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13)
                        )
                    ),
                    child: Text('Submit',
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w400
                        )
                    )
                )
              ],
            ),
          ),
        )
    );
  }
}

class BudgetManagingState extends State<BudgetManaging> {
  String Selected = '2024';
  final List<String> DropDownItems = ['2023', '2022', '2021'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(context: context, pagetitle: 'Budget Managing', automaticallyImplyLeading: true),
        backgroundColor: bgcolor2,
        bottomNavigationBar: navbar(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(23, 0, 23, 23),
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DailyCap()),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(13, 13, 13, 18),
                    decoration: BoxDecoration(
                      color: secondarycolor,
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Daily Cap',
                              style: TextStyle(
                                color: white,
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                                height: 1.2,
                              ),
                            ),
                            Text('₱5000 / 416 kWh',
                              style: TextStyle(
                                color: white,
                                fontSize: 20.23,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: white,
                          size: 43,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 13),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(13, 13, 13, 18),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.vertical(top: Radius.circular(13)),
                      ),
                      child: PopupMenuButton<String>(
                        initialValue: Selected,
                        color: primarycolor,
                        constraints: BoxConstraints.expand(
                            width: MediaQuery.of(context).size.width - 46,
                            height: 150
                        ),
                        offset: Offset(13, 55),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(13))
                        ),
                        onSelected: (String newValue) {
                          setState(() {
                            Selected = newValue;
                          });
                        },
                        itemBuilder: (BuildContext context) {
                          return DropDownItems.map((String value) {
                            return PopupMenuItem<String>(
                              value: value,
                              child: Text(value,
                                style: TextStyle(
                                  color: white,
                                  fontSize: 17.23,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            );
                          }).toList();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(Selected,
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                                height: 1.2,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 43,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 6.5),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.fromLTRB(13, 6.5, 13, 6.5),
                            decoration: BoxDecoration(
                              color: white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Center(
                                    child: Text('MONTH',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w800,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text('TOT. CONS.',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w800,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text('BILL',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w800,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 6.5),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.fromLTRB(13, 6.5, 13, 6.5),
                            decoration: BoxDecoration(
                              color: white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Center(
                                    child: Text('January',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text('1000 kWh',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text('3,350.00',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 6.5),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.fromLTRB(13, 6.5, 13, 6.5),
                            decoration: BoxDecoration(
                              color: white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Center(
                                    child: Text('February',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text('800 kWh',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text('3,050.08',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 6.5),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.fromLTRB(13, 6.5, 13, 6.5),
                            decoration: BoxDecoration(
                              color: white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Center(
                                    child: Text('March',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text('922 kWh',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text('3,333.33',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 6.5),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.fromLTRB(13, 6.5, 13, 6.5),
                            decoration: BoxDecoration(
                              color: white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Center(
                                    child: Text('April',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text('715 kWh',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text('2,458.00',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 6.5),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.fromLTRB(13, 6.5, 13, 6.5),
                            decoration: BoxDecoration(
                              color: white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Center(
                                    child: Text('May',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text('1100 kWh',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text('3,500.00',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 6.5),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.fromLTRB(13, 6.5, 13, 6.5),
                            decoration: BoxDecoration(
                              color: white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Center(
                                    child: Text('June',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text('498 kWh',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text('1,989.13',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 6.5),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.fromLTRB(13, 6.5, 13, 6.5),
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.vertical(bottom: Radius.circular(13)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Center(
                                    child: Text('July',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text('966 kWh',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text('3,324.67',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}

class DailyCap extends StatefulWidget {
  DailyCap({super.key});
  @override
  DailyCapState createState() => DailyCapState();
}

class DailyCapState extends State<DailyCap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(context: context, pagetitle: 'Daily Cap', automaticallyImplyLeading: true),
        backgroundColor: bgcolor2,
        bottomNavigationBar: navbar(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 23),
            height: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Set your daily budget cap for your electricity (₱)',
                            style: TextStyle(
                                fontSize: 28.23,
                                fontWeight: FontWeight.w800,
                                height: 1.2
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 23),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Amount',
                        filled: true,
                        fillColor: white,
                        contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 28),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ],
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BudgetManaging()),
                      );
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: primarycolor,
                        foregroundColor: white,
                        fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
                        padding: EdgeInsets.symmetric(vertical: 13),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13)
                        )
                    ),
                    child: Text('Submit',
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w400
                        )
                    )
                )
              ],
            ),
          ),
        )
    );
  }
}
