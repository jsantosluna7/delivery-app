import 'package:delivery_app/src/features/common_widgets/my_button.dart';
import 'package:delivery_app/src/features/common_widgets/back_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/login_banner.jpg',
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.4,
                    fit: BoxFit.cover),
                Positioned(top: 40, child: backButtton(context, Colors.white))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20
                  ),
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  SizedBox(
                    height: 10
                  ),
                  Text('Login into your account'),
                  SizedBox(height: 30),
                  emailInput(),
                  SizedBox(height: 20),
                  passwordInput(),
                  SizedBox(height: 10),
                  MyButton(
                    buttonText: 'Login',
                    onTap: () {
                      //Si el login es satifactorio
                      //Naveganis a la pantalla principal
                      Navigator.pushNamed(context, 'Tabs');
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'Forgot');
                        },
                        child: Container(
                          margin: EdgeInsets.all(20),
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(
                                fontSize: 15,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'Register');
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  TextFormField emailInput() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.email_outlined,
            color: Colors.orange,
          ),
          hintText: 'user@email.com',
          labelText: 'Enter your email',
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.orange)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.orange),
          ),
          labelStyle: TextStyle(color: Colors.orange)),
    );
  }
}

TextFormField passwordInput() {
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.password_outlined,
          color: Colors.orange,
        ),
        hintText: 'enter your password',
        labelText: 'Enter your password',
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.orange)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.orange),
        ),
        labelStyle: TextStyle(color: Colors.orange)),
  );
}
