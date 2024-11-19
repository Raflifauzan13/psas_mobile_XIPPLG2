import 'package:flutter/material.dart';
import 'package:psas_mobile_rafli/profil.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              cursorColor: Color.fromARGB(255, 46, 138, 243),
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              cursorColor: Colors.red,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true, // Menyembunyikan teks password
            ),
            SizedBox(height: 20),
             ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue
                
              ),
                onPressed: () {
                   {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => profil()),
                    );
                  }
                },
                child: Text('Login')
             )
          ],
        ),
      ),
    );
  }
}