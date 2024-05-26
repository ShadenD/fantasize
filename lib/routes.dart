import 'package:fantasize/core/middleware/constant/routes.dart';
import 'package:fantasize/core/middleware/middleware.dart';
import 'package:fantasize/view/screen/Favorites.dart';
import 'package:fantasize/view/screen/ItemsScreen.dart/Classes.dart';
import 'package:fantasize/view/screen/ItemsScreen.dart/Mugs.dart';
import 'package:fantasize/view/screen/ItemsScreen.dart/Si.dart';
import 'package:fantasize/view/screen/ItemsScreen.dart/cakeItem.dart';
import 'package:fantasize/view/screen/ItemsScreen.dart/flowersItem.dart';
import 'package:fantasize/view/screen/ItemsScreen.dart/frameworkItem.dart';
import 'package:fantasize/view/screen/ItemsScreen.dart/hoodies.dart';
import 'package:fantasize/view/screen/ItemsScreen.dart/mobile_cover.dart';
import 'package:fantasize/view/screen/ItemsScreen.dart/ringItem.dart';
import 'package:fantasize/view/screen/ItemsScreen.dart/t_shirtItem.dart';
import 'package:fantasize/view/screen/ItemsScreen.dart/tatreez.dart';
import 'package:fantasize/view/screen/SignUp.dart';
import 'package:fantasize/view/screen/address_information.dart';
import 'package:fantasize/view/screen/cart.dart';
import 'package:fantasize/view/screen/categories.dart';
import 'package:fantasize/view/screen/edit_address.dart';
import 'package:fantasize/view/screen/edit_card.dart';
import 'package:fantasize/view/screen/explore.dart';
import 'package:fantasize/view/screen/forgetpassword.dart';
import 'package:fantasize/view/screen/order_history.dart';
import 'package:fantasize/view/screen/payment_method.dart';
import 'package:fantasize/view/screen/profile.dart';
import 'package:fantasize/view/screen/user_info.dart';
import 'package:fantasize/view/screen/verification.dart';
import 'package:fantasize/view/widget/curve.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => curve(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.signUp, page: () => signUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => forgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => verfiycode()),
  GetPage(name: AppRoute.categoriesscreen, page: () => categoriesscreen()),
  GetPage(name: AppRoute.explore, page: () => const explore()),
  GetPage(name: AppRoute.Favorites, page: () => Favorites()),
  GetPage(name: AppRoute.cart, page: () => cart()),
  GetPage(name: AppRoute.edit_card, page: () => edit_card()),
  GetPage(name: AppRoute.edit_address, page: () => const edit_address()),
  GetPage(name: AppRoute.edit_address, page: () => const edit_address()),
  GetPage(name: AppRoute.Profile, page: () => Profile()),
  GetPage(name: AppRoute.User_info, page: () => User_info()),
  GetPage(name: AppRoute.address_info, page: () => address_info()),
  GetPage(name: AppRoute.order_history, page: () => order_history()),
  GetPage(name: AppRoute.Payment_Method, page: () => Payment_Method()),
  GetPage(name: AppRoute.flowers_Item, page: () => flowers_Item()),
  GetPage(name: AppRoute.Rings_Item, page: () => Rings_Item()),
  GetPage(name: AppRoute.Cake_Item, page: () => Cake_Item()),
  GetPage(name: AppRoute.Tshirt_Item, page: () => Tshirt_Item()),
  GetPage(name: AppRoute.Framework_Item, page: () => Framework_Item()),
  GetPage(name: AppRoute.Mugs_Item, page: () => Mugs_Item()),
  GetPage(name: AppRoute.Mobile_Cover_Item, page: () => Mobile_Cover_Item()),
  GetPage(name: AppRoute.Hoodies_Item, page: () => Hoodies_Item()),
  GetPage(name: AppRoute.Classes_Item, page: () => Classes_Item()),
  GetPage(name: AppRoute.Tatreez_Item, page: () => Tatreez_Item()),
    GetPage(name: AppRoute.Tatreez_Item, page: () => Si_Item()),

];
