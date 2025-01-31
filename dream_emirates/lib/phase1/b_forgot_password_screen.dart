import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ForgotPasswordScreen(),
    );
  }
}

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F6FF),
        body: Stack(
          children: [
            Image.asset('images/ellipse.png'),
            Positioned(
              top: 112,
              left: 152,
              child: Image.asset("images/logo1.png"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Forgot password
                  const Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: Color(0xFF111111),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  const SizedBox(height: 20),

                  const SizedBox(
                    width: 279,
                    child: Opacity(
                      opacity: 0.50,
                      child: Text(
                        "Don’t worry, we’ll send a link to reset your password.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF111111),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Input field
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email address or phone number',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: const Color(0xFFE9EDF9),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Send Link button
                  ElevatedButton(
                    onPressed: () {
                      // Handle send link action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Send link',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Back button
                  ElevatedButton(
                    onPressed: () {
                      // Handle send link action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF3F6FF),
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Back',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
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
