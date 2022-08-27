import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  String? _username;
  String? _password;
  _signIn() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 80,
                    alignment: Alignment.center,
                    child: const Image(
                      image: AssetImage('assets/images/Instagram_logo.svg.png'),
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                  child: TextFormField(
                    decoration:
                        const InputDecoration(labelText: 'Username or email'),
                    validator: (value) {
                      if (value!.isEmpty && !value.contains('@')) {
                        return 'Please enter valid username or email';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Password'),
                    validator: (value) {
                      if (value!.length < 8) {
                        return 'Please enter valid password';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  width: MediaQuery.of(context).size.width,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: _signIn,
                    color: Colors.blue,
                    child: const Text('Sign In'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      child: Text(
                        'Don\'t have an account?',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/signup');
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            )),
      ),
      backgroundColor: Colors.white,
    );
  }
}
