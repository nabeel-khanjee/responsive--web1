import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:news/controllers/MenuController.dart';
import 'package:news/responsive.dart';
import 'package:news/screens/main/components/containes.dart';

import '../../../constants.dart';
import 'socal.dart';
import 'web_menu.dart';

class Header extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ClipPath(
        clipper: WaveClipperTwo(),
        child: Container(
          color: Colors.grey.shade400,
          margin: EdgeInsets.only(bottom: 10),
          child: ClipPath(
            clipper: WaveClipperOne(),
            child: Opacity(
              opacity: 1,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1487017159836-4e23ece2e4cf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1471&q=80',
                    ),
                    fit: BoxFit.cover,
                     
                  ),
                ),
                width: double.infinity,
                child: SafeArea(
                  child: Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: kMaxWidth),
                        padding: EdgeInsets.all(kDefaultPadding * 2),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                if (!Responsive.isDesktop(context))
                                  IconButton(
                                    icon: Icon(
                                      Icons.menu,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      _controller.openOrCloseDrawer();
                                    },
                                  ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "Sigma ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 32,
                                              color: Colors.white)),
                                      TextSpan(
                                          text: "Techies",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 32,
                                              color: kPrimaryColor)),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                if (Responsive.isDesktop(context)) WebMenu(),
                                Spacer(),
                                // Socal
                                Socal(),
                              ],
                            ),
                            SizedBox(height: kDefaultPadding * 10),
                            Container(
                              color: Color.fromRGBO(1,1, 1, 0.2),
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "WE CREATE FOR YOU",
                                      style: TextStyle(
                                        fontSize: 32,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: kDefaultPadding),
                                      child: Text(
                                        "Stay updated with the newest design and development stories, case studies, \nand insights shared by DesignDK Team.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Raleway',
                                          height: 1.5,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: kDefaultPadding * 10),
                            Material(
                              elevation: 4,
                              child: FittedBox(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Text(
                                        "Contact Us",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: kBodyTextColor,
                                        ),
                                      ),
                                      SizedBox(width: kDefaultPadding / 2),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: kBodyTextColor,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            if (Responsive.isDesktop(context))
                              SizedBox(height: kDefaultPadding),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
