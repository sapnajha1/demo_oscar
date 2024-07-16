import 'package:demo_oscar/core/viewmodels/splash_viewmodel.dart';
import 'package:demo_oscar/ui/views/auth/login_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/viewmodels/auth_viewmodel.dart';
import 'ui/views/splash/splash_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashViewModel()),
        ChangeNotifierProvider(create: (_) => LoginViewModel()),

      ],
      child: MaterialApp(
        title: 'Oscar',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        // routes: {
        //   '/': (context) => SplashView(),
        //   '/auth': (context) => LoginView(),
        //   // '/record': (context) => RecordView(),
        //   // '/profile': (context) => ProfileView(),
        // },
        home: LoginView(),

      )
    );
  }
}
