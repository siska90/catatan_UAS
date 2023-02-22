import 'package:catatan_uas/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:catatan_uas/services/firebase_auth_services.dart';
import 'package:catatan_uas/screen/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();
  FirebaseAuthServices fbServices = FirebaseAuthServices();

  login() async {
    fbServices
        .loginAkun(email: emailControler.text, password: passwordControler.text)
        .then((value) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${value?.user?.email} succes login'),
        ),
      );
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        color: Colors.amberAccent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Opi Siskawati',
                style: TextStyle(color: Colors.deepPurple, fontSize: 30),
              ),
              Text(
                '220101141',
                style: TextStyle(color: Colors.deepPurple, fontSize: 30),
              ),
              SizedBox(
                height: 30,
              ),
              Icon(Icons.email, color: Colors.red, size: 70.0),
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
              ElevatedButton(
                onPressed: () {
                  login();
                },
                child: Text('Login'),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => RegisterScreen(),
                    ),
                  );
                },
                child: Text('Belum punya akun? daftar disini'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
