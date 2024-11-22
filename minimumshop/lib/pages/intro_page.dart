import 'package:flutter/material.dart';
import 'package:minimumshop/components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(Icons.coffee,
                size: 72, color: Theme.of(context).colorScheme.tertiary),

            const SizedBox(
              height: 25,
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
              height: 10,
            ),

            //subjudul
            Text(
              "Kopi & Hidup",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            //button
            MyButton(
                onTap: () => Navigator.pushNamed(context, 'login_page'),
                child: const Icon(Icons.arrow_forward))
          ],
        ),
      ),
    );
  }
}
