import 'package:clean_architecture/core/error/failures.dart';
import 'package:clean_architecture/features/infrastructure/models/account_model.dart';
import 'package:dartz/dartz.dart';

abstract class IExampleRepository {
  Future<Either<Failure, String>> onLogin({String? name, String? password});
  Future<Either<Failure, dynamic>> onChangePassword(
      {String? oldPassword, String? newPassword, String? retypePassword});
  Future<Either<Failure, AccountModel>> onGetAccountInformation();
}
