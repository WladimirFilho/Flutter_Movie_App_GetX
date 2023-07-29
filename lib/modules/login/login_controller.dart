import 'package:movie_app_getx/application/ui/loader/loader_mixin.dart';
import 'package:movie_app_getx/application/ui/messages/messages_mixin.dart';
import 'package:movie_app_getx/services/login/login_services.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with LoaderMixin, MessageMixin {
  final loading = false.obs;
  final message = Rxn<MessageModel>();
  final LoginServices _loginServices;

  LoginController({
    required LoginServices loginService,
  }) : _loginServices = loginService;

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    massageListener(message);
  }

  Future<void> login() async {
    try {
      loading.value = true;
      await _loginServices.login();
      loading.value = false;
      message.value =
          MessageModel.info(title: 'Success', message: 'You are Logged In');
    } on Exception catch (e, s) {
      loading.value = false;
      MessageModel.error(title: 'Error', message: 'Error on logIn');
    }
  }
}
