import 'package:get/get.dart';
import 'package:islame_appclone/screens/HomeView.dart';
import 'package:islame_appclone/screens/SearchView.dart';
import 'package:islame_appclone/screens/Profile.dart';
class AppRoutes{

  static const HOME= '/';
  static const About='/About';
  static const profile ='/profile';

  static List<GetPage> routes=<GetPage>[
    GetPage(name: HOME, page: () => HomeView()),
    GetPage(name: About, page: () => SearchView()),
    GetPage(name: profile, page: () => profileView()),
  ];
}

