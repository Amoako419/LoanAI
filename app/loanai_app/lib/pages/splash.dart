import 'package:flutter/material.dart';
import 'package:loanai_app/pages/mainpage.dart';

class Splash extends StatefulWidget {
    const Splash({super.key});

    @override
    State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
    @override
    void initState() {
    super.initState();
    _navigateToHome();
    }

    _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 8000), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyApp()),
    );
    }

    @override
    Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            CircularProgressIndicator(
                color: Colors.white, // Set the color of the loading icon
            ),
            SizedBox(height: 20),
            Text(
                'LoanAI',
                style: TextStyle(
                fontSize: 45.0,
                color: Colors.white,
                fontFamily: 'Montserrat',
                ),
            ),
            ],
        ),
        ),
    );
    }
}