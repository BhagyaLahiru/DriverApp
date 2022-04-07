import 'package:delevary_app/authentication/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreenState extends StatefulWidget {
  const LoginScreenState({Key? key}) : super(key: key);

  @override
  State<LoginScreenState> createState() => _LoginScreenStateState();
}

class _LoginScreenStateState extends State<LoginScreenState> {

    TextEditingController emailTextEditingController = TextEditingController();
    TextEditingController passwordTextEditingController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("images/logo1.png"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Login as a Driver",
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),

                        TextField(
                controller: emailTextEditingController,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Email",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
                      TextField(
                controller: passwordTextEditingController,
                keyboardType: TextInputType.text,
                obscureText: true,
                style: const TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Password",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),

                 const SizedBox(
                height: 20,
              ),
            ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (c) => const CarInfoScreen()));
                },
                style:
                    ElevatedButton.styleFrom(primary: Colors.lightGreenAccent),
                child: const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                  ),
                ),),
          
          TextButton(child: const Text("Do not have an Account? Login Here",
style: TextStyle(color: Colors.grey),
          ),
          onPressed: (){
               Navigator.push(context,
                      MaterialPageRoute(builder: (c) =>  SignUpScreen()));
          },
          ),

            ],
          ),
        ),
      ),
    );
  }
}
