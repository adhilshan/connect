import 'package:Connect/Pages/Signin.dart';
import 'package:Connect/Pages/ViewProfile.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});
  @override
  Widget build(BuildContext context) {
  void signup(){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ViewProfile()));
  }
  void googleLogin() {}
    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 50, 0, 50),
                    child: Text('Connect',
                        style: TextStyle(
                          color: Color.fromARGB(255, 31, 31, 31),
                          fontSize: 34.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        )),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                      child: Text(
                        'Create Account',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 31, 31, 31),
                          fontSize: 36.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                      child: Text(
                        'Hey User, Welcome onboard. Let\'s begin the journey.',
                        style: TextStyle(
                            color: Color.fromARGB(255, 99, 99, 99),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                   Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 20.0),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: TextFormField(
                        autocorrect: true,
                        autofocus: false,
                        obscureText: false,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          alignLabelWithHint: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 12.0),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(255, 236, 236, 236),
                        ),
                        style: TextStyle(
                            color: const Color(0xFF333333), fontSize: 20.0),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 20.0),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: TextFormField(
                        autocorrect: false,
                        autofocus: false,
                        autofillHints: [AutofillHints.email],
                        obscureText: false,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          alignLabelWithHint: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 12.0),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(255, 236, 236, 236),
                        ),
                        style: TextStyle(
                            color: const Color(0xFF333333), fontSize: 20.0),
                      ),
                    ),
                  ),
                  Container(height: 20.0),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: TextFormField(
                        autocorrect: false,
                        autofocus: false,
                        autofillHints: [AutofillHints.password],
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          alignLabelWithHint: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 12.0),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(255, 236, 236, 236),
                        ),
                        style: TextStyle(
                            color: const Color(0xFF333333), fontSize: 20.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 20.0),
                      child: ElevatedButton(
                        onPressed: signup,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 0, 204, 119),
                          padding: EdgeInsets.all(16.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          maximumSize: Size(double.infinity, double.infinity),
                          elevation: 5,
                          shadowColor: Colors.black,
                        ),
                        child: Text(
                          'Sign In',
                          style:
                              TextStyle(color: Color(0xFFFFFFFF), fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                              height: 1.0,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Color(0xFFCCCCCC),
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text(
                            'OR',
                            style: TextStyle(
                              color: Color(0xFF999999),
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                              height: 1.0,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Color(0xFFCCCCCC),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: googleLogin,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/google-icon.png',
                                  width: 20.0,
                                  height: 20.0,
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  'Continue With Google',
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.black87),
                                )
                              ],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFFFFFFF),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                side: BorderSide(
                                  color: Color(0xFFDDDDDD),
                                  width: 2.0,
                                ),
                              )),
                        )),
                  ),
                  Padding(
                    padding:EdgeInsets.fromLTRB(0, 0, 0, 40.0),
                    child: GestureDetector(
                      onTap: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Signin()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account? ',
                            style: TextStyle(
                              color: Color(0xFF2F2F2F),
                              fontSize: 16.0
                            ),
                            
                          ),
                          Text(
                            'Sign In here',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 204, 119),
                              fontWeight:FontWeight.w800,
                              fontSize: 16.0
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}