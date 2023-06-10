import 'package:cuidapet_mobile/app/core/helpers/enviroments.dart';
import 'package:cuidapet_mobile/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class ApplicationConfig {
  Future<void> configureApp() async {
    WidgetsFlutterBinding.ensureInitialized();

    await _firebaseCoreConfig();
    await _loadEnv();
  }

  Future<void> _firebaseCoreConfig() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  Future<void> _loadEnv() => Enviroments.loadEnvs();
}
