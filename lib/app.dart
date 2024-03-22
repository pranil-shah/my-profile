import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_profile/core/routes/router.dart';
import 'package:my_profile/exports.dart';
import 'package:my_profile/main.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DataService>(create: (context) => DataService()),
      ],
      builder: (context, child) {
        return OKToast(
          child: MaterialApp(
            title: 'My Profile',
            debugShowCheckedModeBanner: false,
            navigatorKey: locator<NavigationService>().navigationKey,
            theme: ThemeData(
                colorScheme:
                    ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
                useMaterial3: true,
                splashColor: AppColors.transparent,
                highlightColor: AppColors.transparent,
                appBarTheme: const AppBarTheme(
                  scrolledUnderElevation: 0,
                  elevation: 0,
                )),
            onGenerateRoute: onGenerateRoute,
            initialRoute: RouteNames.loginViewRoute,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: const Locale('en'),
            supportedLocales: const [
              Locale('en'), // English
            ],
          ),
        );
      },
    );
  }
}
