import 'package:clean_architecture/features/infrastructure/models/account_model.dart';

abstract class IExampleService {
  Future<dynamic> onLogin({String name, String password});
  Future<dynamic> onChangePassword(
      {String oldPassword, String newPassword, String retypePassword});
  Future<AccountModel> getAcountInfomation();
}
