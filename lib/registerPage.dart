import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 120,
          height: MediaQuery.of(context).size.height / 3,
          // color: Colors.deepPurple[200],
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 10.0,
                color: Colors.blueGrey, //134
              ),
            ],
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
              topLeft: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0),
            ),
            color: Colors.blueGrey,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                "Register",
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Enter your Username',
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      // Set border for enabled state (default)
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 3,
                            color: Color.fromARGB(255, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // Set border for focused state
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 3, color: Colors.deepPurple),
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Enter your Password',
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      // Set border for enabled state (default)
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 3,
                            color: Color.fromARGB(255, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // Set border for focused state
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 3, color: Colors.deepPurple),
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    context.goNamed('home');
                  },
                  child: Text("Register")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(text: "Do you have an Account :"),
                  ])),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.blue,
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      context.goNamed('login');
                    },
                    child: const Text('Login'),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
