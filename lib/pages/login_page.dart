// ignore_for_file: use_super_parameters, library_private_types_in_public_api, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_tailwind_colors/flutter_tailwind_colors.dart';
import 'package:auth_ui/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
            ),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberChecked = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: TWColors.gray.shade50,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding:
                  EdgeInsetsDirectional.symmetric(horizontal: width * 0.04),
              margin: EdgeInsets.only(top: height * 0.08),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    'Selamat Datang!',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: TWColors.slate.shade800,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    'Sampaikan Laporan Anda langsung kepada instansi pemerintah berwenang.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: TWColors.gray.shade400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.05),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: TWColors.gray.shade200,
                      blurRadius: 10.0, // Seberapa kabur shadow-nya
                      spreadRadius: 2.0, // Seberapa luas shadow-nya
                      offset:
                          Offset(0, 4), // Posisi shadow (horizontal, vertical)
                    )
                  ],
                ),
                height: double.infinity,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: height * 0.03),
                        Text(
                          'Login to your account',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Start right now with us',
                          style: TextStyle(
                            fontSize: 15,
                            color: TWColors.gray.shade400,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: TWColors.gray.shade800,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: TWColors.gray.shade300,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: TWColors.blue.shade500,
                                  ),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: width * 0.05,
                                  vertical: width * 0.04,
                                ),
                                hintText: 'your@email.com',
                                hintStyle: TextStyle(
                                  color: TWColors.gray.shade400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.025,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Password',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: TWColors.gray.shade800,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: TWColors.gray.shade300,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: TWColors.blue.shade500,
                                  ),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: width * 0.05,
                                  vertical: width * 0.04,
                                ),
                                hintText: '*********',
                                hintStyle: TextStyle(
                                  color: TWColors.gray.shade400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.015,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: width * 0.04,
                                  child: Transform.scale(
                                    scale: 1.2,
                                    child: Checkbox(
                                      value: rememberChecked,
                                      activeColor: TWColors.blue.shade500,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          rememberChecked = value ?? false;
                                        });
                                      },
                                      side: BorderSide(
                                        color: TWColors.gray.shade300,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  child: Text(
                                    'Remember me',
                                    style: TextStyle(
                                        color: TWColors.gray.shade700),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Forgot Password?',
                              style: TextStyle(color: TWColors.blue.shade600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.015,
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              backgroundColor: TWColors.blue.shade500,
                              minimumSize: Size.fromHeight(50),
                              foregroundColor: TWColors.blue.shade300,
                            ),
                            onPressed: () {},
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.015,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Don\'t have an account?'),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: BorderSide(
                                    color: TWColors.gray.shade200,
                                  ),
                                ),
                                backgroundColor: TWColors.white,
                                shadowColor: Colors.transparent,
                                foregroundColor: TWColors.blue.shade900,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegisterScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                'Sign up',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.06,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
