import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:news/responsive.dart';

import '../../../constants.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    bool isTable = Responsive.isTablet(context);
    bool isDesktop = Responsive.isDesktop(context);

    return  ClipPath(
          clipper: WaveClipperOne(flip: true, reverse: true),
          child: Container(
            color: Colors.grey.shade400,
        margin: EdgeInsets.only(top: 5),
        
            child: ClipPath(
                clipper: WaveClipperTwo(flip: true, reverse: true),
                child: Container(


                  width: double.infinity,
                  color: kDarkBlackColor,
                  child: SafeArea(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          child: Container(
                            margin: EdgeInsets.only(top: 70),
                            constraints: BoxConstraints(maxWidth: kMaxWidth),
                            padding: EdgeInsets.all(kDefaultPadding),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [


                                
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                          RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "Sigma ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 32,
                                              color: kBodyTextColor)),
                                      TextSpan(
                                          text: "Techies",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 32,
                                              color: kPrimaryColor)),
                                    ],
                                  ),
                                ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      "We create possibilities",
                                      style: TextStyle(color: kBodyTextColor),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "for the connect world",
                                      style: TextStyle(color: kBodyTextColor),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Be Bold.",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Explore",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      "Home",
                                      style: TextStyle(color: kBodyTextColor),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "About",
                                      style: TextStyle(color: kBodyTextColor),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Careers",
                                      style: TextStyle(color: kBodyTextColor),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Services",
                                      style: TextStyle(color: kBodyTextColor),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Visit",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      "Enoy So. California",
                                      style: TextStyle(color: kBodyTextColor),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "34 Tesla,Ste 100 ",
                                      style: TextStyle(color: kBodyTextColor),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Irvine,Ca,USA 92618",
                                      style: TextStyle(color: kBodyTextColor),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "New Business",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Text(
                                          "engage@wearneernvoy.com",
                                          style:
                                              TextStyle(color: kBodyTextColor),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "949.333.3106 ",
                                          style:
                                              TextStyle(color: kBodyTextColor),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Follow",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      "Instagram",
                                      style: TextStyle(color: kBodyTextColor),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Twitter",
                                      style: TextStyle(color: kBodyTextColor),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "LinkedIn",
                                      style: TextStyle(color: kBodyTextColor),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Legal",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      "Terms",
                                      style: TextStyle(color: kBodyTextColor),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Privacy",
                                      style: TextStyle(color: kBodyTextColor),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ),
        
      
    );
  }
}
