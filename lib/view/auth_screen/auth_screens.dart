import 'package:amazon/constants/common_functions.dart';
import 'package:amazon/utils/colors.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => AuthScreenState();
}

class AuthScreenState extends State<AuthScreen> {
  bool inLogin = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        centerTitle: true,
        title: Image(
          image: AssetImage('assets/images/amazon_logo.png'),
          height: height * 0.04,
          width: width * 1,
        ),
      ),
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.03, vertical: height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: textTheme.displaySmall!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              CommonFunctios.blankSpace(height * 0.02, 0),
              Container(
                height: height * 0.063,
                width: width,
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                decoration:
                    BoxDecoration(border: Border.all(color: greyShade3)),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: greyShade3),
                        ),
                        color: greyShade1,
                      ),
                      height: height * 0.06,
                      width: width,
                      child: Row(
                        children: [
                          Container(
                            height: height * 0.03,
                            width: height * 0.03,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: grey),
                                color: white),
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.circle,
                              size: height * 0.015,
                              color: !inLogin ? transparent : secondaryColor,
                            ),
                          ),
                          CommonFunctios.blankSpace(0, width * 0.02),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'Create Account.',
                                    style: textTheme.bodyLarge!
                                        .copyWith(fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: 'New to Amazon? ',
                                    style: textTheme.bodyMedium)
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
