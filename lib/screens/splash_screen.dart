import 'package:flutter/material.dart';
import '../size_config.dart';

class SplashScreen extends StatefulWidget {
  final bool isLogin;
  const SplashScreen(this.isLogin, {super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 200,
              width: 150,
              child: Image.asset('assets/images/union.png'),
            ),
            Text(
              'WellBe',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}