/* import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                "Login",
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
                  child: Text("LogIn")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(text: "Dont you have an Account :"),
                  ])),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.blue,
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      context.goNamed('register');
                    },
                    child: const Text('Register'),
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
 */

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200], // Set background color
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 80, // Adjust width
          height: MediaQuery.of(context).size.height / 2.5, // Adjust height
          decoration: BoxDecoration(
            color: Colors.white, // Set container background color
            borderRadius: BorderRadius.circular(30.0), // Rounded corners
            boxShadow: const [
              BoxShadow(
                blurRadius: 10.0,
                color: Colors.grey, // Adjust shadow color
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0), // Add padding
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Space evenly
                children: [
                  // Title
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 30, color: Colors.blueGrey),
                  ),

                  // Username Field
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),

                  // Password Field
                  TextFormField(
                    controller: _passwordController,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                  ),

                  // Login Button
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Implement login logic here
                        context.goNamed('home');
                      }
                    },
                    child: Text("Login"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Set button color
                    ),
                  ),

                  // Register Link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextButton(
                        onPressed: () => context.goNamed('register'),
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
