import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:proyecto_moviles2/screens/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(); // Carga variables de .env

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final apiKey = dotenv.env['HUGGINGFACE_API_KEY'];
  if (apiKey == null || apiKey.isEmpty) {
    throw Exception('ERROR: API Key no configurada en .env');
  }

  runApp(MyApp());  // QUITAR const si LoginScreen no es const
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Simple',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),  // QUITAR const si LoginScreen no es const
    );
  }
}
