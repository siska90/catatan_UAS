import 'package:catatan_uas/screen/login_screen.dart';
import 'package:catatan_uas/services/firebase_auth_services.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();
  FirebaseAuthServices fbServices = FirebaseAuthServices();

  register() async {
    fbServices
        .registerAkun(
            email: emailControler.text, password: passwordControler.text)
        .then((value) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${value?.user?.email} success register'),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        color: Colors.blueAccent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Opi Siskawati',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Text(
                '220101141',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(
                height: 30,
              ),
              Icon(Icons.app_registration,
                  color: Colors.deepPurple, size: 70.0),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: emailControler,
                decoration: InputDecoration(
                  labelText: 'email',
                  hintText: 'masukkan email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: passwordControler,
                decoration: InputDecoration(
                  labelText: 'password',
                  hintText: 'masukkan password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  register();
                },
                child: Text('register'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Sudah punya akun? login disini'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
