import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_course/models/app_theme.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context).textTheme;
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            padding:
                const EdgeInsets.only(top: 24, bottom: 8, left: 16, right: 16),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Profile',
                      style: AppTheme.getTextStyle(themeData.headline5,
                          color: Colors.black)),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/op_profile.png",
                      width: 50,
                      height: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  title: Text(
                    "Lezley Cluet",
                    style: AppTheme.getTextStyle(themeData.subtitle1),
                  ),
                  subtitle: Text(
                    "lezleeeeet@gmail.com",
                    style: AppTheme.getTextStyle(themeData.subtitle1),
                  ),
                  trailing: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                      child: const Icon(
                        Icons.edit,
                        color: Colors.black,
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Account",
                      style: AppTheme.getTextStyle(themeData.headline6),
                      textAlign: TextAlign.left,
                    )),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  title: Text(
                    "Notifications",
                    style: AppTheme.getTextStyle(themeData.subtitle1,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                  leading: const Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.black,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Security",
                    style: AppTheme.getTextStyle(themeData.subtitle1,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                  leading: const Icon(
                    Icons.lock_open_outlined,
                    color: Colors.black,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Email Preference",
                    style: AppTheme.getTextStyle(themeData.subtitle1,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                  leading: const Icon(
                    Icons.mail_outline,
                    color: Colors.black,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Course",
                      style: AppTheme.getTextStyle(themeData.headline6),
                      textAlign: TextAlign.left,
                    )),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  title: Text(
                    "Certificate",
                    style: AppTheme.getTextStyle(themeData.subtitle1,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                  leading: const Icon(
                    Icons.assignment,
                    color: Colors.black,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Payment",
                    style: AppTheme.getTextStyle(themeData.subtitle1,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                  leading: const Icon(
                    Icons.payment,
                    color: Colors.black,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    "History",
                    style: AppTheme.getTextStyle(themeData.subtitle1,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                  leading: const Icon(
                    Icons.insert_chart_outlined,
                    color: Colors.black,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Support",
                      style: AppTheme.getTextStyle(themeData.headline6),
                      textAlign: TextAlign.left,
                    )),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  title: Text(
                    "Help",
                    style: AppTheme.getTextStyle(themeData.subtitle1,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                  leading: const Icon(
                    Icons.star_border,
                    color: Colors.black,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    "FAQ",
                    style: AppTheme.getTextStyle(themeData.subtitle1,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                  leading: const Icon(
                    Icons.info_outline,
                    color: Colors.black,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CupertinoButton(
                    child: Text(
                      'Sign Out',
                      style: AppTheme.getTextStyle(themeData.subtitle1,
                          fontWeight: FontWeight.w400, color: Colors.red),
                    ),
                    onPressed: (){

                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
