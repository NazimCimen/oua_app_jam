import 'package:appjam/modules/auth/views/login_view.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        toolbarHeight: 170,
        backgroundColor: Color(0xffe3f6f6),
        title: Padding(
            padding: EdgeInsets.all(120),
            child: Image.asset('assets/images/padlock.png', fit: BoxFit.fill)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Sign up',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xff1e2121)),
                ),
                SizedBox(
                  height: 40,
                ),

                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff90b0ff), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff90b0ff), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff90b0ff), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name.';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 24,
                ),
                // E-posta alanı
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff90b0ff), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff90b0ff), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff90b0ff), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email address.';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 24.0),

                // Şifre alanı
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff90b0ff), width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff90b0ff), width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff90b0ff), width: 2),
                        borderRadius: BorderRadius.circular(10),
                      )),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password.';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 24.0),

                // Kayıt ol buton
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Kayıt işlemini gerçekleştir
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, // background color
                    backgroundColor: Color(0xff90b0ff), // text color
                    elevation: 5, // button's elevation when it's pressed
                  ),
                  child: Text('Sign up'),
                ),

                SizedBox(height: 40),

                TextButton(
                  onPressed: () {
                    // giriş sayfasına git
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    'Already have an account? Log in',
                    style: TextStyle(
                      color: Color(0xff1e2121),
                    ),
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
