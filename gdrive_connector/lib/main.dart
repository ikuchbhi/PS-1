import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'drive_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final user = await _signIn();
            if (user != null) {
              final googleAuth = await user.authentication;
              final cred = GoogleAuthProvider.credential(
                accessToken: googleAuth.accessToken,
                idToken: googleAuth.idToken,
              );
              final auth = await FirebaseAuth.instance.signInWithCredential(
                cred,
              );
              final authHeaders = await user.authHeaders;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DrivePage(user: auth.user!, authHeaders: authHeaders),
                ),
              );
            }
          },
          child: const Text('Sign in via Google'),
        ),
      ),
    );
  }

  Future<GoogleSignInAccount?> _signIn() async {
    final googleUser = await GoogleSignIn(
      scopes: <String>[
        'email',
        'https://www.googleapis.com/auth/drive',
      ],
    ).signIn();

    return googleUser;
  }
}
