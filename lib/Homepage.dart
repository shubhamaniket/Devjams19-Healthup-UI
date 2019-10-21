import 'package:flutter/material.dart';
import 'package:driverside/signup.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end:Alignment.bottomLeft,
          colors: [Colors.blue,Colors.greenAccent]
        )
      ),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SingleChildScrollView(
                      child: Column(
        children: <Widget>[
            SizedBox(
              height: 100.0,
            ),
            CircleAvatar(
              radius: 60.0,
              backgroundColor: Color(0xff0ABDE3),
              backgroundImage: AssetImage('assets/images/icontwo.png'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            Text("HealthUp",style:TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
            )),
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Material(
              elevation: 5.0,
              color: Color(0xff48b1bf),
              borderRadius: BorderRadius.circular(30.0),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                onPressed: () {print("Logged in");},
                child: Text("Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    ),
              ),
        ),
            ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                        onTap: (){print("Forgot Password?");},
                        child: Container(
                        alignment: Alignment.center,
                        child: Text("Forgot Password?",
                        style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    )
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Material(
              elevation: 5.0,
              color: Color(0xff48b1bf),
              borderRadius: BorderRadius.circular(30.0),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));},
                child: Text("Click to Sign Up",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    ),
              ),
        ),
            )
        ],
      ),
          ),
        ],
      )
    ),
    );
  }}