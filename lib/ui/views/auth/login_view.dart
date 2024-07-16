import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/viewmodels/auth_viewmodel.dart';
import '../../shared/components/custom_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    //
    final imageSize = screenWidth*0.5;
    final padding = screenWidth*0.05;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: imageSize,
              height: imageSize,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets1/ai image.jpg'),
                    fit: BoxFit.cover,
                  )),
            ),
            
            SizedBox(height: screenHeight*0.05,),
            Text(
              "Speech your thoughts",
              style: TextStyle(
                fontSize: screenWidth * 0.06, // 6% of screen width
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: screenHeight * 0.01), // 1% of screen height
            Text(
              "You can download or save\nYou can download or save\nYou can download or save",
              style: TextStyle(
                fontSize: screenWidth * 0.04, // 4% of screen width
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: screenHeight * 0.05),
            // Consumer<LoginViewModel>(
            //   builder: (context, viewModel, child) {
            //     return CustomButton(
            //       text: "Login with Google",
            //       onPressed: viewModel!.loginWithGoogle,
            //       icon: Image.asset('assets/images/google_logo.png', width: screenWidth * 0.06, height: screenWidth * 0.06),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
