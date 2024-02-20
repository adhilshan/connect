import 'package:flutter/material.dart';

class connectsm extends StatelessWidget {
  const connectsm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Now Let\'s Connect\nYour Other Social Media',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF5555551)),
                  )
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
