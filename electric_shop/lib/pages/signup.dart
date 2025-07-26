import 'package:electric_shop/pages/login.dart';
import 'package:electric_shop/widget/support_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/login.png',
                width: MediaQuery.of(context).size.width,
                height: 220.0,
                fit: BoxFit.cover,
              ),
              Center(
                child: Text("Sign Up", style: AppWidget.boldTextFieldStyle()),
              ),
              SizedBox(height: 16.0),
              Text(
                "Please enter the details below to \n                    continue.",
                style: AppWidget.lightTextFieldStyle(),
              ),
              SizedBox(height: 28.0),
              Text("Name", style: AppWidget.semiboldTextFieldStyle()),
              SizedBox(height: 10.0),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfff4f5f9),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Please Enter Your Name",
                    prefixIcon: Icon(Icons.person_2),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text("Email", style: AppWidget.semiboldTextFieldStyle()),
              SizedBox(height: 10.0),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfff4f5f9),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Please Enter Your Email",
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text("Password", style: AppWidget.semiboldTextFieldStyle()),
              SizedBox(height: 10.0),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfff4f5f9),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Please Enter Your Password",
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
              ),

              SizedBox(height: 22.0),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  padding: EdgeInsets.all(14.0),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already  Have an account?  ",
                    style: AppWidget.lightTextFieldStyle(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
