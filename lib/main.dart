import 'package:flutter/material.dart';
import 'package:ui_ux_project/ui/Screenswidget/firstscreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/langs', // <-- change the path of the translation files
        fallbackLocale: Locale('en'),
        child: MyApp()),
  );
}
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
  // TODO: implement build
  return ScreenUtilInit(
    designSize: Size(411, 820),
    minTextAdapt: true,
    builder: () => MaterialApp(
      debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: _MainScreenState()

      /* Builder(builder: (context) {
            return Scaffold(
              body: Center(
                child: RaisedButton(
                  onPressed: () {
                    print(MediaQuery.of(context).size.width.toString());
                    print(MediaQuery.of(context).size.height.toString());
                  },
                ),
              ),
            );
          })*/
    ),
  );
}
}

class _MainScreenState extends StatefulWidget {
  @override
  __MainScreenStateState createState() => __MainScreenStateState();
}

class __MainScreenStateState extends State<_MainScreenState> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/user.jpeg'),
                ),
                accountName: Text('Mohammed'),
                accountEmail: Text('Mohammed@gmail.com')),
            ListTile(
              onTap: () {
                if (context.locale == Locale('en')) {
                  context.setLocale(Locale('ar'));
                } else {
                  context.setLocale(Locale('en'));
                }
              },
              title: Text('Change_Language'.tr()),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {

                setState(() {

                });
              },
              title: Text('Settings'.tr()),
              trailing: Icon(Icons.arrow_forward_ios),
            ),

          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Image(
              image: AssetImage('assets/images/line.png'),
              width: 20.w,
              height: 20.h,
            ),
            onPressed: () {
              return Scaffold.of(context).openDrawer();
            },
          );
        }),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: FirstScreen(context: context,),
    );
  }
}

