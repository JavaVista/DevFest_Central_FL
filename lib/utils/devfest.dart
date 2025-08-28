import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Devfest {
  static const String appName = "Devfestcentfl";
  static const String appVersion = "Version 2.0.1";
  static const int appVersionCode = 11;
  static const String appColor = "#ffd7167";
  static Color primaryAppColor = Colors.white;
  static Color secondaryAppColor = Colors.black;
  static const String googleSansFamily = "GoogleSans";
  static bool isDebugMode = true;

  //* Images

  static const String bannerLight = "assets/images/banner_light.png";
  static const String bannerDark = "assets/images/banner_dark.png";


  //*  Texts
  static const String welcomeText = "Welcome to GDG DevFest Florida \n🌴🏖️";
  static const String subtitleText = "The most MAGICAL developers conference";
  static const String descText =
      '''DevFests are community-led, developer events hosted by GDG chapters around the globe focused on community building & learning about Google’s technologies. Each DevFest is inspired by and uniquely tailored to the needs of the developer community and region that hosts it.''';

  static const String loadingText = "Loading...";
  static const String tryAgainText = "Try Again";
  static const String someErrorText = "Some error";
  static const String signInText = "Sign In";
  static const String signInGoogleText = "Sign in with google";
  static const String signOutText = "Sign Out";
  static const String wrongText = "Something went wrong";
  static const String confirmText = "Confirm";
  static const String supportText = "Support Needed";
  static const String featureText = "Feature Request";
  static const String moreFeatureText = "More Features coming soon.";
  static const String updateNowText =
      "Please update your app for seamless experience.";
  static const String checkNetText =
      "It seems like your internet connection is not active.";

//* ActionTexts
  static const String scheduleText = "Schedule";
  static const String speakersText = "Speakers";
  static const String teamText = "Team";
  static const String sponsorText = "Sponsors";
  static const String faqText = "FAQ";
  static const String mapText = "Location";

  //* Preferences
  static SharedPreferences? prefs;
  static const String darkModePref = "darkModePref";
}
