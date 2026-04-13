import 'package:flutter/material.dart';

class RegFormPage extends StatefulWidget {
  const RegFormPage({super.key});

  @override
  State<RegFormPage> createState() => _RegFormPageState();
}

class _RegFormPageState extends State<RegFormPage> {
  @override
  Widget build(BuildContext context) {
    //   double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.teal, Colors.green],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Create an Account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Secure and simple registration",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Full Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        Expanded(
                          child: Text(
                            "I have agreed to the terms and conditions",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.green,
                        ),
                        child: Text(
                          "Register Now",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    RichText(textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Already Registered? ',
                        style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                            text: 'Login Now',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.tealAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
