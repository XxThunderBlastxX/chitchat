import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1512, 791),
      builder: (context, _) => MaterialApp.router(
        title: 'Chitchat',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        routeInformationProvider:
            AppRouter.instance.router.routeInformationProvider,
        routeInformationParser:
            AppRouter.instance.router.routeInformationParser,
        routerDelegate: AppRouter.instance.router.routerDelegate,
      ),
    );
  }
}
