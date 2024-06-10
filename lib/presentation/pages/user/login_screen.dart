import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:c_market_app/presentation/pages/user/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  var _enteredEmail = '';
  var _enteredPassword = '';

  void _submit() async {
    final isValid = _formKey.currentState!.validate();

    if (!isValid) {
      return;
    }

    _formKey.currentState!.save();

    try {
      final userCredentials = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: _enteredEmail, password: _enteredPassword);
      //print(userCredentials);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) => UserPage(),
        ),
      );
    } on FirebaseAuthException catch (error) {
      if (error.code == 'user-not-found') {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('일치하는 사용자를 찾을 수 없습니다.'),
          ),
        );
      }
      if (error.code == 'invalid-email' || error.code == 'invalid-password') {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('이메일 또는 비밀번호가 일치하지 않습니다.'),
          ),
        );
      }

      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(error.message ?? '인증 실패'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(60, 100, 60, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('logo'),
            SizedBox(height: 10),
            Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(labelText: '이메일'),
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                    textCapitalization: TextCapitalization.none,
                    validator: (value) {
                      if (value == null ||
                          value.trim().isEmpty ||
                          !value.contains('@')) {
                        return '유효한 이메일 주소를 입력해 주세요.';
                      }

                      return null;
                    },
                    onSaved: (value) {
                      _enteredEmail = value!;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: '비밀번호'),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.trim().length < 6) {
                        return '6자 이상의 비밀번호를 입력해 주세요.';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _enteredPassword = value!;
                    },
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: _submit,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFDCAE96) //DCAE96 FF6F61
                        //Theme.of(context).colorScheme.primaryContainer,
                        ),
                    child: Text('로그인'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => SignUpScreen()));
                    },
                    child: Text('회원가입'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
