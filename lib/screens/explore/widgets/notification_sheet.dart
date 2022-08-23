import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_course/models/app_theme.dart';

class NotificationSheet extends StatelessWidget {
  const NotificationSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme
        .of(context)
        .textTheme;
    return DraggableScrollableSheet(
      expand: false,
      builder: (context, controller) {
        return Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: SingleChildScrollView(
            controller: controller,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  width: double.infinity,
                  child: Text('Notification',
                    style: AppTheme.getTextStyle(textTheme.headline5),),
                ),
                const SizedBox(height: 15,),
                Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  child: Text('Today',
                    style: AppTheme.getTextStyle(textTheme.headline6),),
                ),
                const SizedBox(height: 5,),
                ListTile(
                  leading: Icon(Icons.check_box, color: Colors.green[800], size: 30,),
                  title: Text('Your payment is success',
                    style: AppTheme.getTextStyle(textTheme.subtitle2),),
                  subtitle: Text('Start your course now',
                    style: AppTheme.getTextStyle(textTheme.subtitle2, color: Colors.grey),),
                  trailing: Icon(Icons.more_horiz, color: Colors.green[800]),
                ),
                ListTile(
                  leading: Icon(Icons.notifications, color: Colors.green[800], size: 30,),
                  title: Text('Daily Reminder',
                    style: AppTheme.getTextStyle(textTheme.subtitle2),),
                  subtitle: Text('Continue your recent course',
                    style: AppTheme.getTextStyle(textTheme.subtitle2, color: Colors.grey),),
                  trailing: Icon(Icons.more_horiz, color: Colors.green[800]),
                ),
                const SizedBox(height: 15,),
                Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  child: Text('Yesterday',
                    style: AppTheme.getTextStyle(textTheme.headline6),),
                ),
                const SizedBox(height: 5,),
                ListTile(
                  leading: Icon(Icons.file_download, color: Colors.green[800], size: 30,),
                  title: Text('Download your certificate',
                    style: AppTheme.getTextStyle(textTheme.subtitle2),),
                  subtitle: Text('Go to account page to download',
                    style: AppTheme.getTextStyle(textTheme.subtitle2, color: Colors.grey),),
                  trailing: Icon(Icons.more_horiz, color: Colors.green[800]),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.green[800],
                    child: Text("%", style: AppTheme.getTextStyle(textTheme.subtitle1, color: Colors.white)),
                  ),
                  title: Text('Download your certificate',
                    style: AppTheme.getTextStyle(textTheme.subtitle2),),
                  subtitle: Text('Go to account page to download',
                    style: AppTheme.getTextStyle(textTheme.subtitle2, color: Colors.grey),),
                  trailing: Icon(Icons.more_horiz, color: Colors.green[800]),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
