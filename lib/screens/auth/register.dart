// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_field

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/models/users.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  User user = User('', '');
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  var _errorPasswordString;
  var _errorEmailString;

  bool __loading = false;

  @override
  void initState() {
    super.initState();
    user = User('', '');
  }

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _heigth = MediaQuery.of(context).size.height;
    return containsLogin(context, _width, _heigth);
  }

  Widget containsLogin(BuildContext context, double _width, double _height) {
    final button = Container(
      width: _width * 0.6,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                      side: const BorderSide(color: Colors.white)))),
          child: const Text("Log In",
              style: TextStyle(fontSize: 17.0, color: Colors.white)),
          onPressed: () async {
            if (_validateUsername() && _validatePassword()) {
              user.setEmail = _emailController.text;
              user.password = _passwordController.text;
              print(_emailController.text);
              await user.Register(
                  _emailController.text, _passwordController.text);
            }
            _width;
          }),
    );
    return Scaffold(
        backgroundColor: const Color.fromARGB(86, 2, 36, 255),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/logo.png'),
              textInput(_width, 'Email'),
              const SizedBox(height: 16),
              textInput(_width, "Password"),
              const SizedBox(height: 10),
              button
            ],
          ),
        ));
  }

  Container textInput(double width, String labelText) {
    return Container(
      alignment: Alignment.center,
      width: width * 0.75,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 3.0),
          borderRadius: const BorderRadius.all(Radius.circular(100))),
      child: Container(
        padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
        child: TextFormField(
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: labelText,
              errorText: _errorEmailString,
              labelStyle: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      letterSpacing: 0.5))),
          controller:
              (labelText == "Email") ? _emailController : _passwordController,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  bool _validatePassword() {
    var isPasswordEmpty = _passwordController.text == '';
    if (isPasswordEmpty) {
      setState(() {
        _errorPasswordString = 'Password can not be empty';
      });
    }
    return !isPasswordEmpty;
  }

  bool _validateUsername() {
    var isUsernameEmpty = _emailController.text == '';
    if (isUsernameEmpty) {
      setState(() {
        _errorEmailString = 'Email can not be empty';
      });
    }
    return !isUsernameEmpty;
  }
}
