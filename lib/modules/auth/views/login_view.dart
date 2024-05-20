import 'package:appjam/modules/auth/views/sign_up_view.dart';
import 'package:appjam/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
        backgroundColor: Color(0xff90b0ff),
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
                  'Login',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xff1e2121)),
                ),
                SizedBox(
                  height: 40,
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

                SizedBox(height: 32.0),

                // Giriş yap düğmesi
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Giriş işlemini gerçekleştir
                      // ...
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeView(),
                          ));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, // background color
                    backgroundColor: Color(0xff90b0ff), // text color
                    elevation: 5, // button's elevation when it's pressed
                  ),
                  child: Text('Login'),
                ),

                SizedBox(height: 80),

                // Şifreni mi unuttun?
                TextButton(
                  onPressed: () {
                    // Şifre sıfırlama sayfasına git
                  },
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: Color(0xff1e2121),
                    ),
                  ),
                ),

                SizedBox(height: 16.0),

                // Hesabınız yok mu?
                TextButton(
                  onPressed: () {
                    // Kayıt sayfasına git
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignupPage()));
                  },
                  child: Text(
                    'Don\'t have an account? Sign up',
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
