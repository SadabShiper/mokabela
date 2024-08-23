import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color:
                Colors.black, // Set the text color to black to match HomePage
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white, // Set AppBar background to white
        iconTheme:
            IconThemeData(color: Colors.black), // Set back icon color to black
        elevation: 0, // Remove shadow for a cleaner look
      ),
      backgroundColor:
          Colors.blue.shade100, // Same as scaffoldBackgroundColor in main.dart
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo or App title
                Text(
                  'Mokabela',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade800,
                  ),
                ),
                SizedBox(height: 40.0),

                // Email TextField
                TextField(
                  decoration: _buildInputDecoration(
                    label: 'Email',
                    suffixText: '', // No suffix needed
                    helperText: 'Enter your email address',
                  ),
                ),
                SizedBox(height: 20.0),

                // Password TextField
                TextField(
                  obscureText: true,
                  decoration: _buildInputDecoration(
                    label: 'Password',
                    suffixText: '', // No suffix needed
                    helperText: 'Enter your password',
                  ),
                ),
                SizedBox(height: 10.0),

                // Forgot Password Link
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // Handle forgot password
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.blue.shade800),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),

                // Sign In Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/home'); // Navigate to HomePage on sign in
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                  ),
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
                SizedBox(height: 20.0),

                // Sign Up with Google Button
                OutlinedButton.icon(
                  onPressed: () {
                    // Handle Google sign up
                  },
                  icon: Image.asset(
                    'assets/icons/google_icon.png', // Path to the Google icon image
                    height: 24.0, // Set the icon size
                    width: 24.0, // Set the icon size
                  ),
                  label: Text(
                    'Sign In with Google',
                    style: TextStyle(fontSize: 16.0, color: Colors.red),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.red),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                  ),
                ),
                SizedBox(height: 20.0),

                // Don't have an account? Sign Up
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/signup'); // Navigate to SignUpPage
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.blue.shade800),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper method to create a consistent InputDecoration
  InputDecoration _buildInputDecoration({
    required String label,
    required String suffixText,
    String? hintText,
    String? helperText,
  }) {
    return InputDecoration(
      labelText: label,
      labelStyle:
          TextStyle(color: Colors.blue.shade800), // Customize label color
      hintText: hintText,
      helperText: helperText,
      helperStyle: TextStyle(color: Colors.blueGrey), // Helper text style
      suffixText: suffixText,
      suffixStyle: TextStyle(color: Colors.black), // Suffix text style
      fillColor: Colors.white,
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
            color: Colors.blue.shade800), // Outline border color and width
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
            color: Colors.blue.shade800), // Focused border color and width
      ),
      contentPadding: EdgeInsets.symmetric(
          horizontal: 12.0, vertical: 20.0), // Adjust content padding
    );
  }
}
