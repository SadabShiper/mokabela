import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // Variables to store selected date
  DateTime? _selectedDate;

  // Method to handle date selection
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // Current date as the initial date
      firstDate: DateTime(1900), // Earliest date allowed
      lastDate: DateTime.now(), // Latest date allowed
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
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
                  'Create an Account',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade800,
                  ),
                ),
                SizedBox(height: 40.0),

                // Name TextField
                TextField(
                  decoration: _buildInputDecoration(
                    label: 'Name',
                    suffixText: '', // No suffix needed
                    helperText: 'Enter your full name',
                  ),
                ),
                SizedBox(height: 20.0),

                // ID TextField
                TextField(
                  decoration: _buildInputDecoration(
                    label: 'ID',
                    suffixText: '', // No suffix needed
                    helperText: 'Enter your ID number',
                  ),
                ),
                SizedBox(height: 20.0),

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
                    helperText: 'Enter a secure password',
                  ),
                ),
                SizedBox(height: 20.0),

                // Phone Number TextField
                TextField(
                  decoration: _buildInputDecoration(
                    label: 'Phone Number',
                    suffixText: '', // No suffix needed
                    helperText: 'Enter your phone number',
                  ),
                ),
                SizedBox(height: 20.0),

                // Gender TextField
                TextField(
                  decoration: _buildInputDecoration(
                    label: 'Gender',
                    suffixText: '', // No suffix needed
                    helperText: 'Enter your gender',
                  ),
                ),
                SizedBox(height: 20.0),

                // Date of Birth Field with DatePicker
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0), // Add padding to adjust position
                  child: TextField(
                    readOnly: true,
                    onTap: () => _selectDate(context), // Open date picker
                    decoration: _buildInputDecoration(
                      label: 'Date of Birth',
                      suffixText: '', // No suffix needed
                      helperText: 'Select your date of birth',
                      hintText: _selectedDate != null
                          ? "${_selectedDate!.toLocal()}".split(' ')[0]
                          : 'Select your date of birth',
                    ),
                  ),
                ),
                SizedBox(height: 20.0),

                // Home Address TextField
                TextField(
                  decoration: _buildInputDecoration(
                    label: 'Home Address',
                    suffixText: '', // No suffix needed
                    helperText: 'Enter your home address',
                  ),
                ),
                SizedBox(height: 20.0),

                // Sign Up Button
                ElevatedButton(
                  onPressed: () {
                    // Handle sign up logic
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
                    'Sign Up',
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
                    'Sign Up with Google',
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

                // Already have an account? Sign In
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? "),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/login'); // Navigate to LoginPage
                      },
                      child: Text(
                        'Sign In',
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
