import 'package:flutter/material.dart';
import 'package:furniture/app/app.dart';
import 'package:furniture/data/storage_repository/storage_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageRepository.init();
  runApp(const App());
}
