import 'package:Connect/Pages/UploadUserProfile.dart';
import 'package:flutter/material.dart';

class UploadUserdata extends StatelessWidget {
  const UploadUserdata({super.key});

  @override
  Widget build(BuildContext context) {
    void gonext(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => UploadUserprofile()));
    }
    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
                    child: ElevatedButton(
                        onPressed: null,
                        child: Text('Skip'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 0, 204, 119),
                          padding: EdgeInsets.all(4.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60.0),
                          ),
                          maximumSize: Size(double.infinity, double.infinity),
                          elevation: 0,
                          shadowColor: Colors.black,
                        )),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'About Yourself',
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF666666)),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                    child: Text(
                      'Step 1/3',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFF999999)
                      ),
                    ),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 20.0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: TextFormField(
                    autocorrect: false,
                    autofocus: false,
                    autofillHints: [AutofillHints.name],
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Your Name',
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
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                  child: Container(
                    width: double.infinity,
                    child: TextFormField(
                      textCapitalization: TextCapitalization.words,
                      obscureText: false,
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText: 'Tell Us About Yourself',
                        alignLabelWithHint: true,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
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
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 20.0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        autocorrect: false,
                        autofocus: false,
                        autofillHints: [AutofillHints.jobTitle],
                        obscureText: false,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Type Your Career (Eg : Web Developer)',
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
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Seperated by Comas (,)',
                          style: TextStyle(
                            color: Color(0xFF888888)
                          ),
                        ),
                      )
                    ],
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
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'How Much Years Of Experience You Have ?',
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
                    padding: EdgeInsets.symmetric(horizontal: 20.0 , vertical: 40.0),
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 20.0),
                      child: ElevatedButton(
                        onPressed: gonext,
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
                          'Next',
                          style:
                              TextStyle(color: Color(0xFFFFFFFF), fontSize: 16.0),
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
