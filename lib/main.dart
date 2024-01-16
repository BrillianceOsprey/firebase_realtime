import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_realtime/RealTimeDatabase%20CRUD/real_tim_crud.dart';
import 'package:firebase_realtime/TO%20DO/todo_list.dart';
import 'package:firebase_realtime/Upload%20Image%20&%20Data%20in%20FirebaseStorage/upload_file.dart';
import 'package:firebase_realtime/firebase_options.dart';

import 'package:flutter/material.dart';

Future<void> main() async {
  // Connets your flutter project with firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.android,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RealTimeCRUDEdatabase(),
    );
  }
}
