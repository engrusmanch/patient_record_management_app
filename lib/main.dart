import 'package:flutter/material.dart';
import 'package:patientrecordmanagementapp/init_isar.dart';
import 'package:patientrecordmanagementapp/presentation/onboarding_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeIsar();
  runApp(const MyApp());
}
Future<void> initializeIsar() async {
  await IsarSingleton.initialize(); // Initialize Isar
  // Now Isar is ready to be used
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const OnboardingScreen(),
    );
  }
}

