import 'package:Connect/Pages/connectsm.dart';
import 'package:flutter/material.dart';

class UploadUserprofile extends StatelessWidget {
  const UploadUserprofile({super.key});

  @override
  Widget build(BuildContext context) {
    void gonext() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => connectsm()));
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
                    'Set Your Profile',
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 15.0),
                    child: Text(
                      'Step 2/3',
                      style: TextStyle(fontSize: 18.0, color: Color(0xFF999999)),
                    ),
                  )
                ],
              ),
              // Generated code for this Stack Widget...
              Container(
                height: 290,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          'https://source.unsplash.com/random/1280x720?profile&52',
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 0,
                        shape: const CircleBorder(),
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(4),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
                                    width: 200,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    size: 24,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1, -1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 0, 204, 119),
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Color.fromARGB(255, 255, 255, 255),
                            size: 24,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
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
                      'Upload & Go Next',
                      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16.0),
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
