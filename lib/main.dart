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
Color bgcolor2 = Color.fromRGBO(200, 233, 233, 1.0);

// COLOR THEME
Color primarycolor = Color.fromRGBO(246, 174, 45, 1.0);
Color secondarycolor = Color.fromRGBO(34, 71, 73, 1.0);
Color white = Colors.white;

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
