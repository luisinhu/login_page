import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    onPressed() {
    print('object');
  }

  
  esqueceuSenha() {
    print('a');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              const Icon(Icons.perm_identity_sharp, size: 150),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      fillColor: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    fillColor: Colors.blue,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 312,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: esqueceuSenha,
                        child: const Text('Esqueceu a senha?'))
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: onPressed, child: const Text('Login')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
