import 'package:flutter/material.dart';
import 'package:loanai_app/pages/splash.dart';

void main() {
  runApp(const LoanAI());
}

class LoanAI extends StatelessWidget {
  const LoanAI({super.key});

  @override
  Widget build(BuildContext context) {
    return   const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LoanAI',
      home:Splash()
    );
  }
}