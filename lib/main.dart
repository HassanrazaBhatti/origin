import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:origin/ui/history_screen.dart';
import 'package:origin/ui/donation_screen.dart';
import 'package:origin/ui/home/dashboard_screen.dart';
import 'package:origin/ui/payment_link.dart';
import 'package:origin/ui/reports_screen.dart';
import 'package:origin/ui/settings/payment_settings.dart';
import 'package:origin/ui/settings/push_notifications.dart';
import 'package:origin/ui/settings/settings_screen.dart';
import 'package:origin/ui/settings/verification_screen.dart';
import 'package:origin/ui/settings/verification_select.dart';
import 'package:origin/ui/start/splash_screen.dart';
import 'package:origin/ui/subscription_screen.dart';
import 'package:origin/utils/strings.dart';
import 'package:origin/utils/styles.dart';

import 'ui/connectwallet/secure_wallet.dart';
import 'ui/referral_screen.dart';


MyStrings myStrings = MyStrings();

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await initialize();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final GlobalKey<NavigatorState> _navigator = GlobalKey<NavigatorState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: _navigator,
      theme: ThemeData(
        scaffoldBackgroundColor: whiteColour
      ),
      debugShowCheckedModeBanner: false,
      home:  SplashScreen(),
    );
  }
}

