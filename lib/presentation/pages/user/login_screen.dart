import 'package:c_market_app/presentation/pages/user/user_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:c_market_app/presentation/pages/user/sign_up_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../routes/route_path.dart';

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
      context.push(RoutePath.main);
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
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: MediaQuery.of(context).size.height, // 화면의 전체 높이를 차지하게 설정
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svg/cmarket_logo.svg',
                  height: 30, // 원하는 크기로 조정 가능
                  width: 30,
                ),
                SizedBox(height: 10),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(labelText: '이메일',),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: _submit,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFDCAE96), //DCAE96 FF6F61
                              //Theme.of(context).colorScheme.primaryContainer,
                            ),
                            child: Text('로그인', style: TextStyle(color: Colors.white)),
                          ),
                          Padding(padding: EdgeInsets.all(10)),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (ctx) => SignUpScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white
                            ),
                            child: Text('회원가입'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
