// Copyright 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// @dart=2.7

import 'package:auth_buttons/res/shared/auth_button.dart';
import 'package:auth_buttons/res/shared/auth_colors.dart';
import 'package:auth_buttons/res/shared/auth_icons.dart';
import 'package:auth_buttons/res/shared/auth_style.dart';
import 'package:flutter/material.dart';

class EmailAuthButton extends AuthButton {
  final Key key;

  ///**[onPressed]** is a void function well be called when the button pressed.
  final VoidCallback onPressed;

  ///**[buttonColor]** Define the button color.
  /// The default value is [white] if the [darkMode] = [false].
  /// else the value is [Color(0xff424242)].
  ///
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/dark-mode-default.png)
  ///
  /// <br/>
  /// You can also give it any color you want.
  ///```dart
  ///color: Colors.amberAccent,
  ///```
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/button-color-amber.png)
  final Color buttonColor;

  ///**[splashColor]** Define the color when the button onPressed.
  ///The default value is [Colors.grey].
  final Color splashColor;

  ///**[elevation]** Define the elevation button, the default value is [2.0].
  ///
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/elevation.png)
  final double elevation;

  ///**[borderRadius]** Define the border radius, the default value is [8.0].
  ///
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  /// <br/>
  ///Sure you can give it any other value.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/border-radius.png)
  final double borderRadius;

  ///**[padding]** Define the button padding, the default value is [null],
  /// when the [style] = [AuthButtonStyle.icon],
  /// the value is equal to [0.0], other way is equal to
  /// [EdgeInsets.only(left: 16.0, right: 16.0, top: 6.0, bottom: 6.0)].
  final EdgeInsets padding;

  ///**[text]** Define text in the button.
  ///
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/text.png)
  final String text;

  ///**[textStyle]** Define the text style.
  ///
  ///You can customise the text style how you prefer example:
  /// ```dart
  ///textStyle: TextStyle(
  ///   color: Colors.red[800],
  ///   fontSize: 16.0,
  ///   fontWeight: FontWeight.bold,
  ///   fontStyle: FontStyle.italic,
  ///   letterSpacing: 2.0,
  /// ),
  /// ```
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/text-style.png)
  final TextStyle textStyle;

  ///**[darkMode]** Define if the theme of the button is dark or light,
  ///the default value is [false].
  ///
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/dark-mode-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-icon.png)
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/dark-mode-icon.png)
  final bool darkMode;

  ///**[borderColor]** Define the border color around the button.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-icon.png)
  ///
  /// <br/>
  /// ```dart
  /// borderColor: Colors.amber
  /// ```
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/border-color-amber.png)
  ///
  /// <br/>
  /// ```dart
  /// borderColor: Colors.green
  /// ```
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/border-color-green.png)
  final Color borderColor;

  ///**[borderWidth]** Define the border width around the button.
  ///
  ///The default value is [null], when the [style] = [AuthButtonStyle.icon],
  ///the value is [2.0].
  ///
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/border-width-soft.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/border-width-medium.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/border-width-large.png)
  final double borderWidth;

  ///**[style]** Define the button style.
  ///
  /// <br/>
  /// This is the default style:
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  /// <br/>
  ///```dart
  ///style: AuthButtonStyle.icon,
  ///```
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-icon.png)
  final AuthButtonStyle style;

  ///**[width]** Define the button width, the default value is the minimum.
  final double width;

  ///**[height]** Define the height button, the default value is the minimum.
  final double height;

  ///**[iconSize]** Define the size of the icon, the default value is [35.0].
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  /// <br/>
  /// Also you can give it any size.
  ///
  /// ```dart
  ///iconSize: 25.0,
  /// ```
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/icon-size-small.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/icon-size-big.png)
  final double iconSize;

  ///**[separator]** Define the value of the space between the [Icon] and the [Text].
  ///the default value is [10.0].
  ///
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/separator.png)
  final double separator;

  ///**[rtl]** A boolean variable needed to support the **right to left** languages.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/google.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/rtl.png)
  final bool rtl;

  ///**[iconStyle]** Define the icon style.
  ///
  /// <br/>
  /// This's the **default** icon.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/lib/images/default/google.png)
  ///
  ///when the **[iconStyle]** is equal to **[AuthIconStyle.outlined]**
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/lib/images/outlined/google.png)
  ///
  ///when the **[iconStyle]** is equal to **[AuthIconStyle.secondary]**
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/lib/images/secondary/google.png)
  final AuthIconStyle iconStyle;

  ///**[iconBackground]** Define the background icon,
  /// when the **[style]** is equal to **[AuthButtonStyle.secondary]**
  final Color iconBackground;

  ///**[EmailAuthButton]** is a button for authentication with Email.
  ///
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/email.png)
  EmailAuthButton({
    this.key,
    @required this.onPressed,
    this.buttonColor,
    this.splashColor,
    this.elevation,
    this.borderRadius = 8.0,
    this.padding,
    this.text = 'Sign in with Email',
    this.textStyle,
    this.darkMode = false,
    this.borderColor,
    this.borderWidth,
    this.style,
    this.width,
    this.height,
    this.iconSize = 35.0,
    this.separator = 10.0,
    this.rtl = false,
    this.iconBackground,
    this.iconStyle,
  })  : assert(text != null),
        assert(darkMode != null),
        assert(rtl != null),
        super(
          key: key ?? ValueKey('EmailAuthButton'),
        );

  @override
  String getIconUrl() {
    if (style == AuthButtonStyle.secondary)
      return (darkMode)
          ? (iconStyle == AuthIconStyle.outlined)
              ? AuthIcons.emailWhite[1]
              : AuthIcons.emailWhite[0]
          : (iconStyle == AuthIconStyle.outlined)
              ? AuthIcons.email[1]
              : AuthIcons.email[0];

    if (iconStyle == AuthIconStyle.outlined)
      return (darkMode)
          ? (iconStyle == AuthIconStyle.outlined)
              ? AuthIcons.email[1]
              : AuthIcons.email[0]
          : (iconStyle == AuthIconStyle.outlined)
              ? AuthIcons.emailWhite[1]
              : AuthIcons.emailWhite[0];

    if (iconStyle == AuthIconStyle.secondary) return AuthIcons.email[2];

    return (darkMode) ? AuthIcons.email[0] : AuthIcons.emailWhite[0];
  }

  @override
  Color getButtonColor() {
    if (style == AuthButtonStyle.secondary)
      return buttonColor ?? (darkMode ? AuthColors.darkMode : Colors.teal);
    if (iconStyle == AuthIconStyle.secondary)
      return buttonColor ?? Colors.white;
    return buttonColor ?? (darkMode ? AuthColors.darkMode : Colors.teal);
  }

  @override
  TextStyle getTextStyle() {
    if (iconStyle == AuthIconStyle.secondary)
      return TextStyle(
        color: Colors.teal[900],
        fontSize: 18,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.50,
      );
    return TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.50,
    );
  }
}
