import 'package:flutter/material.dart';
import 'package:fokaha_delivery/core/localization/locale.dart';
import 'package:fokaha_delivery/features/prsentaion/views/onboarding/onboarding_view.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../core/util/app_routes/list_pages_route.dart';
import '../../core/util/app_routes/string_routes.dart';
import '../../core/util/bindings/app_binding.dart';

 class CulfCamelRunApp extends StatelessWidget {
   const CulfCamelRunApp({super.key});

   @override
   Widget build(BuildContext context) {
     return ScreenUtilInit(
       designSize: const Size(375, 812),
       minTextAdapt: true,
       splitScreenMode: true,
       builder: (_, child) => RefreshConfiguration(
          headerBuilder: () =>  const WaterDropMaterialHeader(distance: 25),
          footerBuilder: () =>  const ClassicFooter(),
         headerTriggerDistance: 10,
         maxOverScrollExtent: 50,
         maxUnderScrollExtent: 0,
         enableScrollWhenRefreshCompleted: true,
         enableLoadingWhenFailed: true,
         hideFooterWhenNotFull: false,
         enableBallisticLoad: true,
         child: GetMaterialApp(
           debugShowCheckedModeBanner: false,
           // locale: Get.deviceLocale,
           fallbackLocale: Locale('ar'), //// تحديد اللغة الاحتياطية كإنجليزية
           locale: Locale('ar'), // تحديد اللغة الإنجليزية كافتراضية

           translations: MyLocale(),

           // title: 'هجن الخليج',
           // locale: const Locale("ar"),
           // fallbackLocale: const Locale("en"),
           initialRoute: StringRoutes.onBoarding,
           getPages: GetPagesList.pages,
           // translations: AppLocalization(),
           initialBinding: AppBinding(),
           // theme: AppTheme.lightTheme(),
           themeMode: ThemeMode.system,
           // Enable theme switching
           builder: (context, widget) {
             ErrorWidget.builder = (FlutterErrorDetails details) {
               // Global error handling
               return Material(
                  child: OnBoardingView(),
               );
             };

             return MediaQuery(
               data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
               child: widget!,
             );
           },
           home: child,
         ),
       ),
     );
   }
 }