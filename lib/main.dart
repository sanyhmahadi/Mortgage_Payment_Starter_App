import 'package:flutter/material.dart';
import 'package:mortgage_payment_starter_app/ui/mortgage_app.dart';
import 'package:mortgage_payment_starter_app/util/colors.dart';

ThemeData _buildMorgageTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      accentColor: primaryIndigoDark,
      primaryColor: primaryIndigo200,
      scaffoldBackgroundColor: secondaryBackgroundWhite,
      hintColor: textOnPrimaryBlack,
      cardColor: secondaryDeepPurple,
      textTheme: _buildMorgageTextTheme(base.textTheme),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: primaryIndigoLight),
              borderRadius: BorderRadius.circular(16))),
      floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
          elevation: 7,
          splashColor: primaryIndigoLight,
          backgroundColor: secondaryDeepPurple));
}

_buildMorgageTextTheme(TextTheme base) {
  return base.copyWith(
      body1: TextStyle(color: textOnPrimaryBlack, fontSize: 16)
          .apply(fontFamily: "PottaOne"));
}

void main() => runApp(new MaterialApp(
      theme: _buildMorgageTheme(),
      home: MortgageApp(),
    ));
