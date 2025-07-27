import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:electric_shop/Admin/home_admin.dart';
import 'package:electric_shop/widget/support_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AadminLogin extends StatefulWidget {
  @override
  State<AadminLogin> createState() => _AadminLoginState();
}

class _AadminLoginState extends State<AadminLogin> {
  var usernamecontroller = TextEditingController();
  var passwordcontroller = TextEditingController();

  loginAdmin() {
    FirebaseFirestore.instance.collection("Admin").get().then((snapshot) {
      snapshot.docs.forEach((result) {
        if (result.data()['username'] != usernamecontroller.text.trim()) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                "Your id is not correct",
                style: TextStyle(fontSize: 18.0, color: Colors.green),
              ),
            ),
          );
        } else if (result.data()['password'] !=
            passwordcontroller.text.trim()) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                "Your id is not correct",
                style: TextStyle(fontSize: 18.0, color: Colors.green),
              ),
            ),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeAdmin()),
          );
        }
      });
    });
  }

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
                child: Text(
                  "Admin Panel",
                  style: AppWidget.boldTextFieldStyle(),
                ),
              ),

              SizedBox(height: 28.0),
              Text("Username", style: AppWidget.semiboldTextFieldStyle()),
              SizedBox(height: 10.0),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfff4f5f9),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: TextFormField(
                  controller: usernamecontroller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: " Enter username",
                    prefixIcon: Icon(Icons.person_2),
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
                child: TextFormField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: " Enter Password",
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
              ),

              SizedBox(height: 22.0),
              GestureDetector(
                onTap: () {
                  loginAdmin();
                },
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.all(14.0),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Text(
                        "Log in",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
