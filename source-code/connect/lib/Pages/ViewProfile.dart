import 'package:flutter/material.dart';
import 'dart:core';
import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ViewProfile extends StatefulWidget {
  const ViewProfile({Key? key}) : super(key: key);
  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: IconButton(
                  icon: Icon(Icons.close, color: Colors.black),
                  onPressed: () {
                    //Navigator.pop(context);
                  },
                ),
                title: Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                centerTitle: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/placeholders/profile-ph-01.jpg',
                        fit: BoxFit.cover,
                        width: screenWidth,
                        height: screenWidth / 1.7,
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(108, 255, 255, 255),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Lisa Sam',
                                            style: TextStyle(
                                                fontSize: 26.0,
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromARGB(
                                                    255, 41, 0, 92)),
                                          ),
                                          SizedBox(
                                            width: 8.0,
                                          ),
                                          Image.asset(
                                              'assets/images/verified_32.png',
                                              fit: BoxFit.cover,
                                              width: 18.0,
                                              height: 18.0)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Color(0xFF242424),
                                            ),
                                            child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 4, 10, 4),
                                                child: Text(
                                                  'Software Developer',
                                                  style: TextStyle(
                                                      color: Color(0xFFFFFFFF)),
                                                )),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Color(0xFF242424),
                                            ),
                                            child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 4, 10, 4),
                                                child: Text(
                                                  'Exp : 12 Years',
                                                  style: TextStyle(
                                                      color: Color(0xFFFFFFFF)),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Status',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 0, 235, 117),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 1, 10, 1),
                          child: Text(
                            'Active',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255, 100, 100, 100)),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 2.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(69, 78, 78, 78),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Beans',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Row(
                        children: [
                          Text(
                            '1.7K',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(width: 4.0),
                          Image.asset(
                            'assets/images/bean.png',
                            width: 18.0,
                            height: 18.0,
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: 2.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(69, 78, 78, 78),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.file_present,
                          color: Color.fromARGB(255, 78, 78, 78),
                          size: 25,
                        ),
                        Text('View Resume'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        '4.5',
                        style: TextStyle(
                            fontSize: 28.0, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Rating',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w200),
                      )
                    ],
                  ),
                  RatingBar.builder(
                    ignoreGestures: true,
                    initialRating: 4.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'SKILLS',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF555555)),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/placeholders/ic_flutter.png',
                      width: 40.0,
                      height: 40.0,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Flutter',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        LinearPercentIndicator(
                          percent: 0.38,
                          width: MediaQuery.of(context).size.width * 0.60,
                          lineHeight: 15,
                          animation: true,
                          animateFromLastPercent: true,
                          progressColor: Color(0xFFA9C2CC),
                          backgroundColor: Color(0xFFF1F4F8),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          padding: EdgeInsets.zero,
                        )
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                          child: SelectionArea(
                            child: Text(
                              '38%',
                              style: TextStyle(
                                  color: Color(0xFFA9C2CC),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/placeholders/ic_js.png',
                      width: 40.0,
                      height: 40.0,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Javascript',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        LinearPercentIndicator(
                          percent: 0.73,
                          width: MediaQuery.of(context).size.width * 0.60,
                          lineHeight: 15,
                          animation: true,
                          animateFromLastPercent: true,
                          progressColor: Color.fromARGB(255, 255, 174, 0),
                          backgroundColor: Color.fromARGB(255, 248, 246, 241),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          padding: EdgeInsets.zero,
                        )
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                        child: SelectionArea(
                          child: Text(
                            '73%',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 174, 0),
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'REVIEWS',
              style: TextStyle(
                  color: Color(0xFF555555),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 30.0),
              child: Container(
                width: double.infinity,
                child: CarouselSlider(
                  items: [
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.0),
                        color: Color(0xFFFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 2,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(60.0),
                                  child: Image.asset(
                                    'assets/placeholders/profile-ph-01.jpg',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Serena',
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Dec 12, 2021',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 6.0),
                              child: RatingBar.builder(
                                ignoreGestures: true,
                                initialRating: 4.5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 30,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ),
                            Text(
                              'I\'m a long term client, she develop awesome apps with awesome ui designs. i recommend her.😊',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  Container(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            size: 18.0,
                                            Icons.thumb_up_alt_outlined,
                                            color: Color(0xFF777777),
                                          ),
                                          SizedBox(
                                            width: 4.0,
                                          ),
                                          Text(
                                            '6',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: Color(0xFF777777)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            size: 18.0,
                                            Icons.thumb_down_alt_outlined,
                                            color: Color(0xFF777777),
                                          ),
                                          SizedBox(
                                            width: 4.0,
                                          ),
                                          Text(
                                            '0',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: Color(0xFF777777)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                  options: CarouselOptions(
                    initialPage: 1,
                    viewportFraction: 0.8,
                    disableCenter: true,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.25,
                    enableInfiniteScroll: true,
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'WORKFLOWS',
                style: TextStyle(
                    color: Color(0xFF555555),
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color(0xFFCCCCCC),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'ID#: ',
                              style: TextStyle(color: Color(0xFF555555)),
                            ),
                            TextSpan(
                              text: '429242424',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 190, 117),
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        'Product Testing',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Conduct comprehensive testing of a new product before its official release. Set up a structured testing plan, define test cases, and assign team members for various testing phases. Document bugs and issues discovered during testing...',
                        style: TextStyle(
                            color: Color(0xFF888888),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Divider(
                        height: 2,
                        thickness: 1,
                        color: Color(0xFFCCCCCC),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Contributors',
                          style: TextStyle(
                              fontSize: 16.0, color: Color(0xFF777777)),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color.fromARGB(255, 0, 255, 128),
                                  width: 2,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(2),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color.fromARGB(255, 0, 255, 128),
                                  width: 2,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(2),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNXx8cHJvZmlsZXxlbnwwfHx8fDE2OTE0NDY5MzJ8MA&ixlib=rb-4.0.3&q=80&w=400',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color.fromARGB(255, 0, 255, 128),
                                  width: 2,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(2),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.asset(
                                    'assets/placeholders/profile-ph-01.jpg',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color(0xFFCCCCCC),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'ID#: ',
                              style: TextStyle(color: Color(0xFF555555)),
                            ),
                            TextSpan(
                              text: '645121578',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 190, 117),
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        'Team Training Workshop',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Organize a training workshop for the team to enhance their skills and knowledge on a specific topic. Develop an agenda, source teaching materials, and coordinate logistics. Assign trainers and monitor attendance to ensure a successful...',
                        style: TextStyle(
                            color: Color(0xFF888888),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Divider(
                        height: 2,
                        thickness: 1,
                        color: Color(0xFFCCCCCC),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Contributors',
                          style: TextStyle(
                              fontSize: 16.0, color: Color(0xFF777777)),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color.fromARGB(255, 0, 255, 128),
                                  width: 2,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(2),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1457449940276-e8deed18bfff?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw1fHxwcm9maWxlfGVufDB8fHx8MTY5MTQ0NjkzMnww&ixlib=rb-4.0.3&q=80&w=400',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color.fromARGB(255, 0, 255, 128),
                                  width: 2,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(2),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.asset(
                                    'assets/placeholders/profile-ph-01.jpg',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              color: Color.fromARGB(255, 240, 240, 240),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Linkify(
                      onOpen: (link) => launchUrl(Uri.parse(link.url)),
                      text:
                          'All Contents & Projects Are Copyrighted \u00A9 Under Connect \n Read Documentation In https://connect.web.app/copyright-policy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Color(0xFF666666)
                      ),
                      linkStyle: TextStyle(
                        decoration: TextDecoration.none
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
