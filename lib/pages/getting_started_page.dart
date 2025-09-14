// ignore_for_file: use_super_parameters, library_private_types_in_public_api, unused_local_variable, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_tailwind_colors/flutter_tailwind_colors.dart';
import 'package:auth_ui/pages/login_page.dart';
import 'package:auth_ui/pages/register_page.dart';

class GettingStartedPage extends StatelessWidget {
  const GettingStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GettingStartedScreen(),
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
            ),
      ),
    );
  }
}

class GettingStartedScreen extends StatefulWidget {
  const GettingStartedScreen({Key? key}) : super(key: key);

  @override
  _GettingStartedScreenState createState() => _GettingStartedScreenState();
}

class _GettingStartedScreenState extends State<GettingStartedScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: TWColors.gray.shade50,
      body: SafeArea(
        child: Container(
          padding: EdgeInsetsDirectional.symmetric(horizontal: width * 0.04),
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
              SizedBox(height: height * 0.05),
              CircleAvatar(
                radius: width * 0.3,
                backgroundImage: AssetImage(
                  'assets/logo-pnj.png',
                ),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(height: height * 0.1),
              ButtonSign(
                width: width,
                text: 'Sign In',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
              ),
              SizedBox(height: height * 0.02),
              ButtonSign(
                width: width,
                text: 'Sign Up',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
              ),
              SizedBox(height: height * 0.05),
              Text(
                'Forgot Password?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: TWColors.gray.shade400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonSign extends StatelessWidget {
  const ButtonSign({
    super.key,
    required this.width,
    required this.text,
    required this.onPressed,
  });

  final double width;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: TWColors.blue.shade500,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          minimumSize: Size.fromHeight(50),
          foregroundColor: TWColors.blue.shade300,
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
