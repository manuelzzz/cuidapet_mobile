import 'package:cuidapet_mobile/app/core/logger/app_logger.dart';
import 'package:cuidapet_mobile/app/core/logger/logger_app_logger_impl.dart';
import 'package:cuidapet_mobile/app/core/rest_client/dio/dio_rest_client.dart';
import 'package:cuidapet_mobile/app/core/rest_client/rest_client.dart';
import 'package:cuidapet_mobile/app/modules/core/auth/auth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton(
          (i) => AuthStore(),
          export: true,
        ),
        Bind.lazySingleton<RestClient>(
          (i) => DioRestClient(),
          export: true,
        ),
        Bind.lazySingleton<AppLogger>(
          (i) => LoggerAppLoggerImpl(),
          export: true,
        )
      ];
}
