import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool statusPassword = true;
  bool statusWarna = true;

  tampilPassword() {
    statusPassword = !statusPassword;
  }

  gantiWarna() {
    setState(() {
      statusWarna = !statusWarna;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: statusWarna ? Colors.green : Colors.yellow,
      body: Column(
        children: [
          TextField(),
          TextField(
            obscureText: statusPassword,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter your password',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(
                icon: Icon(
                    statusPassword ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  tampilPassword();
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              gantiWarna();
            },
            child: Text('ganti warna'),
          ),
        ],
      ),
    );
  }
}
