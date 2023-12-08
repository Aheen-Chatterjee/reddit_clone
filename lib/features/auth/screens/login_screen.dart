import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reddit_clone/core/common/sign_in_button.dart';
import 'package:reddit_clone/core/constants/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Color.fromARGB(0, 244, 67, 54),
          ),
          title: Row(
            children: [
              Image.asset(
                Constants.logoPath,
                height: 40,
              ),
              const Text(
                "  Herddit",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Skip",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 30),

            Text(
              "Dive into anything",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset( "assets/images/loginEmote.png", height: 400,),
            ),

            SizedBox(height: 30),

            SignInButton()
          ],
        ));
  }
}
