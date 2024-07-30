import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/screens/route.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (context, child) {
        ScreenUtil.init(context);
        return const MaterialApp(
          title: "Furniture",
          onGenerateRoute: AppRoute.onGenerateRoute,
          initialRoute: RouteNames.splash,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

