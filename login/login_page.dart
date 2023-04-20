import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart'

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // Text edit Controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: darkBlue,
        body: SafeArea(
          child: Center(
            child: Column(children: [
              const SizedBox(height: 50.0),
              // logo
              Icon(Icons.home_outlined,
                  color: Colors.amberAccent.shade400, size: 180.0),
              const SizedBox(height: 5.0),
              Text(
                'Smart home',
                style: TextStyle(
                    color: Colors.amberAccent.shade400, fontSize: 25.0),
              ),
              const SizedBox(height: 50.0),

              // Campo do Usuário - Username TextField
              CampoLogin(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false), // My Function
              const SizedBox(height: 10.0),
              // Campo do Senha - Password TextField
              CampoLogin(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true), // My Function
              const SizedBox(height: 15.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Registre-se',
                        style: TextStyle(color: Colors.blueGrey.shade200),
                      ), // Text
                      Text(
                        'Esqueceu a senha?',
                        style: TextStyle(color: Colors.blueGrey.shade200),
                      ), // Text
                    ]), // Row
              ), // Padding

              const SizedBox(height: 15.0),
              // Button Login - Botão de login
              // Pode criar um módulo(classe) separado para o botão
              GestureDetector(
                onTap: () {
                  print('Botãozim');
                },
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  margin: const EdgeInsets.symmetric(horizontal: 95.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blueGrey.shade600,
                        Colors.blueGrey.shade700,
                      ],
                    ), // LinearDradient
                  ), // BoxDecoration
                  child: Center(
                    child: Text(
                      'Entre',
                      style: TextStyle(
                          color: Colors.blueGrey.shade200,
                          fontSize: 15), // TextStyle
                    ), // Text
                  ), // Center
                ), // Container
              ), // GestureDetector
              const SizedBox(height: 175.0),
              // Forget password ans register
            ]), //column
          ), // Center
        ), // SafeArea
      ),
    );
  }
}

// Create function for input login

class CampoLogin extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const CampoLogin(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: TextField(
        // nome que aparece na caixinha
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white70), // BorderSide
            ), // OutlineInputBorder
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white70), // BorderSide
            ), // OutlineInputBorder
            fillColor: Colors.white70,
            filled: true,
            hintText: hintText), // InputDecoration,
      ), // TextField
    ); // Padding
  }
}
