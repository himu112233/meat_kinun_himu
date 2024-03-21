import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login(BuildContext context) {
    String login = _loginController.text;
    String password = _passwordController.text;

    // You can perform your login logic here
    print('Login: $login');
    print('Password: $password');

    // Navigate to another screen after successful login
    // Example:
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => HomeScreen()),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 380, // Set width
          height: 300, // Set height
          decoration: BoxDecoration(
            color: Colors.grey[100], // Set background color
            borderRadius: BorderRadius.circular(10), // Set border radius
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Set shadow color
                spreadRadius: 5, // Set spread radius
                blurRadius: 7, // Set blur radius
                offset: Offset(0, 3), // Set offset for the shadow
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _loginController,
                decoration: InputDecoration(
                  labelText: 'Login',
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () => _login(context), // Handle tap event
                child: Container(
                  width: double.infinity, // Set width to occupy full available width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), // Set border radius
                    color: Colors.blue, // Set background color
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15), // Add padding
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white, // Set text color
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
