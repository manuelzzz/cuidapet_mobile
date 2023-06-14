import 'package:cuidapet_mobile/app/core/logger/app_logger.dart';
import 'package:logger/logger.dart';

class LoggerAppLoggerImpl implements AppLogger {
  final _logger = Logger();
  var messages = <String>[];

  @override
  void debug(message, [error, StackTrace? stackTrace]) =>
      _logger.d(message, error, stackTrace);

  @override
  void error(message, [error, StackTrace? stackTrace]) =>
      _logger.e(message, error, stackTrace);

  @override
  void info(message, [error, StackTrace? stackTrace]) =>
      _logger.i(message, error, stackTrace);

  @override
  void warning(message, [error, StackTrace? stackTrace]) =>
      _logger.w(message, error, stackTrace);

  @override
  void append(message, [error, StackTrace? stackTrace]) =>
      messages.add(message);

  @override
  void closeAppend() {
    info(messages.join('\n'));
    messages = [];
  }
}
