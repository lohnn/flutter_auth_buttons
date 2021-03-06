import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    String appName = 'Auth Buttons Example';
    bool darkMode = false;
    AuthButtonStyle authButtonStyle = AuthButtonStyle.icon;
    AuthIconStyle authIconStyle = AuthIconStyle.outlined;
    return MaterialApp(
      title: appName,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: Container(
          width: double.infinity,
          color: darkMode ? Color(0xff303030) : Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GoogleAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
                iconStyle: authIconStyle,
              ),
              Divider(),
              AppleAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
              ),
              Divider(),
              FacebookAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
              ),
              Divider(),
              GithubAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
              ),
              Divider(),
              MicrosoftAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
                iconStyle: authIconStyle,
              ),
              Divider(),
              TwitterAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
                iconStyle: authIconStyle,
              ),
              Divider(),
              EmailAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
                iconStyle: authIconStyle,
              ),
              Divider(),
              HuaweiAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
