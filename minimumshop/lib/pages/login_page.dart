import 'package:flutter/material.dart';
import 'package:minimumshop/components/my_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //Logo
          Icon(Icons.coffee,
              size: 72, color: Theme.of(context).colorScheme.tertiary),

          const SizedBox(
            height: 1,
          ),

          //judul
          const Text(
            "Kohi",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          // username field
          TextField(
            decoration: InputDecoration(
              labelText: 'Username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              prefixIcon: const Icon(Icons.person),
            ),
          ),
          const SizedBox(height: 16),

          // Password field
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              prefixIcon: const Icon(Icons.lock),
            ),
          ),
          const SizedBox(height: 30),

          // Row for Cancel and Login buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(
                onTap: () => Navigator.pushNamed(context, 'onboard_page1'),
                child: const Text("Login"),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
