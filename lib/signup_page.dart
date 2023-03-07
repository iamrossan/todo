import 'package:flutter/material.dart';
import 'package:todo_list/signin_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 241, 242),
        body: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "SignUp",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 35.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  label: const Text("Username"),
                  hintText: "Username..",
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 3, color: Color.fromARGB(255, 5, 135, 183)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  label: const Text("E-mail"),
                  hintText: "Email..",
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 3, color: Color.fromARGB(255, 5, 135, 183)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  label: const Text("Password"),
                  hintText: "Password..",
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 3, color: Color.fromARGB(255, 5, 135, 183)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SignIn(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  fixedSize: const Size(230, 55),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: const Text(
                'SIGN UP',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
