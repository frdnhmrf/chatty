import 'package:chatty/common/routes/routes.dart';
import 'package:chatty/pages/profile/index.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  ProfileController();
  final state = ProfileState();

  void goProfile() async {
    await Get.toNamed(AppRoutes.Profile);
  }
}
