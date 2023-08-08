import 'package:movie_app_getx/repositories/login/login_repository.dart';
import 'package:movie_app_getx/services/login/login_services.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginServicesImpl implements LoginServices {
  LoginRepository _loginRepository;

  LoginServicesImpl({required LoginRepository loginRepository})
      : _loginRepository = loginRepository;

  @override
  Future<UserCredential> login() {
    return _loginRepository.login();
  }

  @override
  Future<void> logOut() => _loginRepository.logOut();
}
