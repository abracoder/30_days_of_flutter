import 'package:flutter/material.dart';
import 'package:flutter_30_days/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "images/login_image.png",
              height: 320,
              width: 320,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter UserName",
                      labelText: "UserName",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter password",
                      labelText: "password",
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    style:
                        TextButton.styleFrom(minimumSize: const Size(120, 51)),
                    child: const Text("Login"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
