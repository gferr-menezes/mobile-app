import 'package:cade_moto_app/repositories/login/login_repository.dart';

import './login_service.dart';

class LoginServiceImpl implements LoginService {
  LoginRepository _loginRepository;

  LoginServiceImpl({required LoginRepository loginRepository})
      : _loginRepository = loginRepository;

  @override
  Future login() => _loginRepository.login();
}
