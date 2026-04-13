import 'package:flutter/material.dart';

class TextFormEx extends StatefulWidget {
  @override
  State<TextFormEx> createState() => _TextFormExState();
}

class _TextFormExState extends State<TextFormEx> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  /// FormKey
  final _formKey = GlobalKey<FormState>();

  bool _isPswdVisble = false;

  String? _validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return ("Enter your email..");
    }

    String emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    if (!RegExp(emailPattern).hasMatch(email)) {
      return ("Enter a vaild email!!");
    }
    return null;
  }

  String? _validatePass(String? pswd) {
    if (pswd == null || pswd.isEmpty) {
      return "Enter your Password";
    }

    String pswdPattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';

    if (pswd.length < 6) {
      return "Password should be 6 Characters";
    }

    if (!RegExp(pswdPattern).hasMatch(pswd)) {
      return "Password must contain Alphabets, Number and Special Charcters";
    }
    return null;
  }

  Future<void> _handleLogin() async {
    if (_formKey.currentState!.validate()) {
      try {
        await Future.delayed(Duration(seconds: 2));
        if (mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("Login Sucessfull")));
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("Error: $e")));
        }
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login With Validation"),
        backgroundColor: Colors.green[200],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Login Page",
                  style: TextStyle(fontSize: 40, color: Colors.green),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 20),

                TextFormField(

                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email Id",
                    hintText: "Enter Your Email",
                    prefixIcon: Icon(Icons.person_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 1),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 1),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                  ),
                  textInputAction: TextInputAction.next,
                  validator: _validateEmail,
                ),

                SizedBox(height: 20),

                TextFormField(

                  obscureText: !_isPswdVisble,
                  decoration: InputDecoration(
                    hintText: "Enter your Passowrd",
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isPswdVisble = !_isPswdVisble;
                        });
                      },
                      icon: Icon(
                        _isPswdVisble ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 1),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 1),
                    ),
                  ),
                  textInputAction: TextInputAction.done,
                  validator: _validatePass,
                ),

                SizedBox(height: 20),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please Contact Support")),
                      );
                    },
                    child: Text("Forget Password"),
                  ),
                ),

                SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () => _handleLogin(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
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
