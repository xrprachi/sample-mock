import 'package:demo/modules/users/models/Result.dart';
import 'package:demo/modules/users/service/users_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  RxList<Result> userListModel = <Result>[].obs;
  RxBool isLoading = false.obs;
  RxBool isPageAvailable = true.obs;
  final ScrollController scrollController = ScrollController();
  RxInt page = 1.obs;
  Result? userListModelIndex;
  Future<void> getUsers() async {
    // try {
    //   isLoading.value = true;
    //   userListModel.value = await UserService.getUsers(page);
    //   isLoading.value = false;
    // } catch (e) {
    //   isLoading.value = false;
    // }
    if (!isPageAvailable.value || isLoading.value) {
      return;
    }
    try {
      isLoading.value = true;
      var data = await UserService.getUsers(page.value);

      if ((data.results?.isNotEmpty ?? false) &&
          !((data.results?.length ?? 0) < 10)) {
        isPageAvailable.value = true;
        page.value++;
      } else {
        isPageAvailable.value = false;
      }
      userListModel.addAll(data.results ?? []);
    } catch (e) {
      print(e);
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    getUsers();

    scrollController.addListener(() {
      double maxScroll = scrollController.position.maxScrollExtent;
      double currentScroll = scrollController.position.pixels;
      double delta = MediaQuery.of(Get.context!).size.height * 0.05;
      if (maxScroll - currentScroll <= delta) {
        getUsers();
      }
    });
  }
}
