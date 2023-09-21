import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/injection/global_cubits.dart';
import 'core/routing/router.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MultiBlocProvider(
      providers: GlobalCubits.getCubits(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Blog App',
        theme: FlexThemeData.light(scheme: FlexScheme.outerSpace),
        darkTheme: FlexThemeData.light(scheme: FlexScheme.outerSpace),
        routerConfig: appRouter.config(),
      ),
    );
  }
}
