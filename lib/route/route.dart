
import 'package:get/get.dart';
import 'package:mbilibili/page/public/home_page.dart';
import 'package:mbilibili/page/public/index_page.dart';

class RouteName{
  static const String index = '/index';
  static const String home = '/home';
}

var getPages = [
  GetPage(name: RouteName.index, page: () => const IndexPage()),
  GetPage(name: RouteName.home, page: () => HomePage()),
];