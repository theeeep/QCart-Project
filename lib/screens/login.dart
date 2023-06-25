import 'package:ecommerce_app/utils/application_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/custom_button.dart';
import '../components/custom_text_input.dart';
import '../utils/custom_theme.dart';
import '../utils/login_data.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailContoller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _loadingButton = false;

  Map<String, String> data = {};

  _LoginScreenState() {
    data = LogInData.signIn;
  }
  void switchLogin() {
    setState(() {
      if (mapEquals(data, LogInData.signUp)) {
        data = LogInData.signIn;
      } else {
        data = LogInData.signUp;
      }
    });
  }

  loginError(FirebaseAuthException e) {
    if (e.message != '') {
      setState(() {
        _loadingButton = false;
      });
    }
  }

  void loginButtonPressed() {
    setState(() {
      _loadingButton = true;
    });
    ApplicationState applicationState =
        Provider.of<ApplicationState>(context, listen: false);

    if (mapEquals(data, LogInData.signUp)) {
      applicationState.signUp(
          _emailContoller.text, _passwordController.text, loginError);
    } else {
      applicationState.signIn(
          _emailContoller.text, _passwordController.text, loginError);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40.0, bottom: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      data["heading"] as String,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  Text(
                    data["subHeading"] as String,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            model(data, _emailContoller, _passwordController),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  child: TextButton(
                    onPressed: switchLogin,
                    child: Text(
                      data["footer"] as String,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  model(Map<String, String> data, TextEditingController emailContoller,
      TextEditingController passwordController) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.only(right: 20, left: 20, top: 30, bottom: 56),
      decoration: CustomTheme.getCardDecoration(),
      child: Column(children: [
        CustomerTextInput(
            label: "Your Email Address",
            placeholder: "email@address.com",
            icon: Icons.person_2_outlined,
            textEditingController: _emailContoller),
        CustomerTextInput(
            label: "Password",
            placeholder: "password",
            icon: Icons.lock_outline_rounded,
            password: true,
            textEditingController: _passwordController),
        CustomButton(
            text: data["label"] as String,
            onPress: loginButtonPressed,
            loading: _loadingButton)
      ]),
    );
  }
}
