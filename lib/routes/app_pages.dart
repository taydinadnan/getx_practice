import 'package:get/get.dart';
import 'package:getxexample/size_transitions.dart';
import '../bindings/sample_bind.dart';
import '../views/first.dart';
import '../views/second.dart';
import '../views/third.dart';

class AppPages {
  static const initial = '/home';

  static final routes = [
    GetPage(name: '/home', page: () => const First()),
    GetPage(
      name: '/second',
      page: () => const Second(),
      customTransition: SizeTransitions(),
      binding: SampleBind(),
    ),
    GetPage(
      name: '/third',
      transition: Transition.cupertino,
      page: () => const Third(),
    ),
  ];
}
