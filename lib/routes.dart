import 'package:fantasize/core/middleware/constant/routes.dart';
import 'package:fantasize/core/middleware/middleware.dart';
import 'package:fantasize/view/screen/Favorites.dart';
import 'package:fantasize/view/screen/SignUp.dart';
import 'package:fantasize/view/screen/cart.dart';
import 'package:fantasize/view/screen/categories.dart';
import 'package:fantasize/view/screen/edit_address.dart';
import 'package:fantasize/view/screen/edit_card.dart';
import 'package:fantasize/view/screen/explore.dart';
import 'package:fantasize/view/screen/forgetpassword.dart';
import 'package:fantasize/view/screen/verification.dart';
import 'package:fantasize/view/widget/curve.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => curve(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.signUp, page: () => signUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => forgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => verfiycode()),
  GetPage(name: AppRoute.verfiyCode, page: () => categoriesscreen()),
  GetPage(name: AppRoute.verfiyCode, page: () => const explore()),
  GetPage(name: AppRoute.verfiyCode, page: () => Favorites()),
  GetPage(name: AppRoute.verfiyCode, page: () => cart()),
  GetPage(name: AppRoute.edit_card, page: () => edit_card()),
  GetPage(name: AppRoute.edit_address, page: () => edit_address()),
];
