import 'package:get/get.dart';
import '../models/user.dart';

class ControllerX extends GetxController {
  final count1 = 0.obs;
  final count2 = 0.obs;
  final list = [56].obs;
  final user = User().obs;

  updateUser() {
    user.update((value) {
      value!.name = 'Jose';
      value.age = 30;
    });
  }

  late Worker _ever;

  @override
  onInit() {
    super.onInit();

    _ever = ever(count1, (_) => print("$_ has been changed (ever)"));

    everAll([count1, count2], (_) => print("$_ has been changed (everAll)"));

    once(count1, (_) => print("$_ was changed once (once)"));

    debounce(count1, (_) => print("debouce$_ (debounce)"),
        time: const Duration(seconds: 1));

    interval(count1, (_) => print("interval $_ (interval)"),
        time: const Duration(seconds: 1));
  }

  int get sum => count1.value + count2.value;

  increment() => count1.value++;

  increment2() => count2.value++;

  disposeWorker() {
    _ever.dispose();
  }

  incrementList() => list.add(75);
}
