import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Naam daalo bhai apna",
                      labelText: "ShubhNaam",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password daalo bhai apna",
                      labelText: "Secret Key",
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),

                  ElevatedButton(onPressed: (){}, child: Text("Andar chalo humare saath  "),
                  style: TextButton.styleFrom(),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
