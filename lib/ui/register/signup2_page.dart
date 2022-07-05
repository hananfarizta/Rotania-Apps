import 'package:flutter/material.dart';
import 'package:rotanesia_apps/routes/app_page.dart';
import 'package:rotanesia_apps/shared/theme.dart';
import 'package:get/get.dart';

class SignUp2 extends StatelessWidget {
  const SignUp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 20, left: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: redColor1,
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            Text(
              'Sign Up',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'Do you have account?',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: reguler,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Login',
                  style: redTextStyle1.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 36,
            ),
            Text(
              'We have sent a verification code\nto number 089*******773',
              style: redTextStyle2.copyWith(
                fontSize: 12,
                fontWeight: reguler,
              ),
            ),
          ],
        ),
      );
    }

    Widget otpInput() {
      return Padding(
        padding: const EdgeInsets.only(left: 48, right: 48, top: 56),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '4',
                  style: primaryTextStyle.copyWith(
                      fontSize: 32, fontWeight: semibold),
                ),
                Text(
                  '4',
                  style: primaryTextStyle.copyWith(
                      fontSize: 32, fontWeight: semibold),
                ),
                Text(
                  '4',
                  style: primaryTextStyle.copyWith(
                      fontSize: 32, fontWeight: semibold),
                ),
                Text(
                  '4',
                  style: primaryTextStyle.copyWith(
                      fontSize: 32, fontWeight: semibold),
                ),
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 2,
                  width: 58.5,
                  color: grayColor5,
                ),
                Container(
                  height: 2,
                  width: 58.5,
                  color: grayColor5,
                ),
                Container(
                  height: 2,
                  width: 58.5,
                  color: grayColor5,
                ),
                Container(
                  height: 2,
                  width: 58.5,
                  color: grayColor5,
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget continueButton() {
      return Container(
        margin:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 38),
        height: 46,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(Routes.signup3);
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return greenColor1;
                  }
                  return redColor1;
                },
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              )),
          child: Text(
            'Continue',
            style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
          ),
        ),
      );
    }

    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [header(), otpInput(), continueButton()],
    )));
  }
}
