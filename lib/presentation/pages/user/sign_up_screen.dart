import 'dart:io';

import 'package:c_market_app/presentation/pages/user/user_image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  var _enteredEmail = '';
  var _enteredPassword = '';
  var _enteredNickname = '';
  File? _selectedImage;
  bool _isUploading = false;

  void _submit() async {
    final isValid = _formKey.currentState!.validate();

    if (!isValid) {
      return;
    }

    //Focus.of(context).unfocus();

    if (_selectedImage == null) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('사진을 찍어 주세요.'),
      ));
      return;
    }

    _formKey.currentState!.save();

    setState(() {
      _isUploading = true;
    });

    try {
      final userCredentials = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _enteredEmail, password: _enteredPassword);

      final storageRef = FirebaseStorage.instance
          .ref()
          .child('user_images')
          .child('${userCredentials.user!.uid}.jpg');

      await storageRef.putFile(_selectedImage!);
      final userImageUrl = await storageRef.getDownloadURL();

      await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredentials.user!.uid)
          .set({
        'user_nickname': _enteredNickname,
        'email': _enteredEmail,
        'user_image_url': userImageUrl
      });

      setState(() {
        _isUploading = false;
      });

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) => UserPage(),
        ),
      );

      //
    } on FirebaseAuthException catch (error) {
      if (error.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('이미 사용중인 이메일입니다.'),
          ),
        );
      }

      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(error.message ?? '회원가입 실패'),
        ),
      );
      setState(() {
        _isUploading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('회원가입'),
      ),
      body: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(40, 40, 40, 0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    UserImagePicker(onPickImage: (pickedImage) {
                      _selectedImage = pickedImage;
                    }),
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
                    //const SizedBox(height: 12),
                    TextFormField(
                      decoration: const InputDecoration(labelText: '닉네임'),
                      enableSuggestions: false,
                      validator: (value) {
                        if (value == null || value.trim().length < 2) {
                          return '2자 이상의 닉네임을 입력해 주세요.';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _enteredNickname = value!;
                      },
                    ),
                    const SizedBox(height: 12),
                    if (_isUploading) CircularProgressIndicator(),
                    if (!_isUploading)
                      ElevatedButton(
                        onPressed: _submit,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFDCAE96) //DCAE96 FF6F61
                            //Theme.of(context).colorScheme.primaryContainer,
                            ),
                        child: Text('회원가입'),
                      ),
                    if (!_isUploading)
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => LoginScreen()));
                        },
                        child: Text('로그인'),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
