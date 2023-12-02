import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class User {
  final String username;
  final String email;
  final String password;

  User({
    required this.username,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'email': email,
      'password': password,
    };
  }
}

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/user_data.json');
  }

  Future<void> saveUser(User user) async {
    final file = await _localFile;

    // Convert the user object to JSON
    Map<String, dynamic> userData = user.toJson();

    // Convert the JSON data to a string
    String jsonString = jsonEncode(userData);

    // Write the JSON string to the file
    await file.writeAsString(jsonString);

    print('User data has been saved to ${file.path}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 130,
                  width: 250,
                  child: Image.asset('images/logo_ngekos.png'),
                ),
                const SizedBox(height: 40),
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'ComicSansMS',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30),
                const SizedBox(
                  width: 290,
                  height: 59,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: TextStyle(
                        fontSize: 24,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(
                  width: 290,
                  height: 59,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        fontSize: 24,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(
                  width: 290,
                  height: 59,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontSize: 24,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 290,
                  height: 41,
                  child: ElevatedButton(
                    onPressed: () async {
                      // Create a user object with the entered data
                      User newUser = User(
                        username: 'Username', // Replace with the entered username
                        email: 'email@example.com', // Replace with the entered email
                        password: 'Password', // Replace with the entered password
                      );

                      // Save the user data to a JSON file
                      await saveUser(newUser);

                      // Navigate to the next screen
                      Navigator.pushNamed(context, '/splashsignup');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Text(
                      'Create Account',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Login Now",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.blue,
                          ),
                        ),
                      ],
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
