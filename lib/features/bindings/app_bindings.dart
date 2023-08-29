import 'package:multiple_choice/core/data/datasources/local_storage.dart';
import 'package:multiple_choice/core/network/dio_middleware.dart';
import 'package:multiple_choice/features/infrastructure/i_repositories/i_example_repository.dart';
import 'package:multiple_choice/features/infrastructure/i_service/i_example_service.dart';
import 'package:multiple_choice/features/infrastructure/repositories/example_repository_impl.dart';
import 'package:multiple_choice/features/infrastructure/services/example_service_impl.dart';
import 'package:multiple_choice/features/presentation/controllers/example_controller.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppBinding {
  Future<void> dependencies() async {
    final sharedPreference = await SharedPreferences.getInstance();
    Get.put(sharedPreference);
    Get.put(LocalStorage(sharedPreferences: Get.find()));
    Get.put<Dio>(DioMiddleware(localStorage: Get.find()).createDio());
    // Get.put<NetworkInfo>(NetworkInfoImpl());
    Get.put<IExampleService>(ExampleService(Get.find()));
    Get.put<IExampleRepository>(
        ExampleRepository(localStorage: Get.find(), service: Get.find()));
    Get.put(ExampleController(), permanent: true);
  }
}
