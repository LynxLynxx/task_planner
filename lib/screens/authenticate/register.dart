import 'package:flutter/material.dart';
import 'package:task_planner/constants.dart';
import 'package:task_planner/services/auth.dart';
import 'package:task_planner/shared/loading.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  bool loading = false;
  //text field state
  String userName = '';
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: LightColors.kLightYellow2,
            appBar: AppBar(
              backgroundColor: LightColors.kLightYellow2,
              elevation: 0,
              actions: [
                FlatButton(
                  onPressed: () {
                    widget.toggleView();
                  },
                  child: Text('Log in'),
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(height: 20.0),
                      Center(
                        child: Text(
                          "Create your account",
                          style: TextStyle(
                            fontSize: 28.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15.0, 0, 10.0),
                        child: Icon(
                          Icons.person,
                          size: 50.0,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      //EMAIL FIELD
                      TextFormField(
                        decoration: textInputDecoration.copyWith(
                          hintText: "Your name",
                          prefixIcon: Icon(
                            Icons.person_outline_outlined,
                            color: Colors.grey,
                          ),
                        ),
                        validator: (value) =>
                            value.isEmpty ? "Enter your name" : null,
                        onChanged: (value) {
                          setState(() => userName = value);
                        },
                      ),
                      SizedBox(height: 20.0),
                      //EMAIL FIELD
                      TextFormField(
                        decoration:
                            textInputDecoration.copyWith(hintText: "e-mail"),
                        validator: (value) =>
                            value.isEmpty ? "Enter an e-mail" : null,
                        onChanged: (value) {
                          setState(() => email = value);
                        },
                      ),
                      SizedBox(height: 20.0),
                      //PASSWORD FIELD
                      TextFormField(
                        decoration: textInputDecoration.copyWith(
                            prefixIcon: Icon(
                              Icons.dehaze,
                              color: Colors.grey,
                            ),
                            hintText: "password"),
                        validator: (value) => value.length < 6
                            ? "Enter a passowrd 6+ chars long"
                            : null,
                        obscureText: true,
                        onChanged: (value) {
                          setState(() => password = value);
                        },
                      ),
                      SizedBox(height: 25.0),
                      RaisedButton(
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            setState(() => loading = true);
                            dynamic result = await _auth
                                .registerWithEmailAndPassword(email, password);
                            if (result == null) {
                              setState(() {
                                error = 'Please supply a valid e-mail';
                                loading = false;
                              });
                            }
                          }
                        },
                        color: LightColors.kLavender,
                        child: Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.w400),
                        ),
                        elevation: 4,
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        error,
                        style: TextStyle(color: Colors.red, fontSize: 14.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
