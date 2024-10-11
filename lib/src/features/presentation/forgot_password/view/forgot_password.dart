import 'package:delivery_app/src/features/common_widgets/back_button.dart';
import 'package:delivery_app/src/features/common_widgets/my_button.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.1),
                Positioned(top: 40, child: backButtton(context, Colors.black))
              ],
            ),
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Forgot password',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Container(
                    width: 305,
                    child: Text(
                      'Please enter your email adress. You will receive a link to create a new password via email.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 45.5),
                  emailInput(),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      alertDialog(
                          context,
                          AssetImage('assets/images/lock.png'),
                          'Your password has been reset',
                          'You will recieve an email to set up new password',
                          'Done', () {
                        Navigator.pushNamed(context, 'Login');
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          'Send',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
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
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange),
            borderRadius: BorderRadius.circular(50)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: Colors.orange),
        ),
        labelStyle: TextStyle(color: Colors.orange)),
  );
}

void alertDialog(
    BuildContext context,
    ImageProvider<Object> imagePath,
    String title,
    String subTitle,
    String buttonText,
    void Function() buttonFunction) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(
                image: imagePath,
                color: Colors.orange,
                width: 130,
                height: 130,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                subTitle,
                textAlign: TextAlign.center,
              ),
              GestureDetector(
                onTap: buttonFunction,
                child: Container(
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      buttonText,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
