import 'package:get_it/get_it.dart';
import 'package:my_profile/app.dart';
import 'package:my_profile/exports.dart';
GetIt locator = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPref.getInstance();
  locator.registerLazySingleton<NavigationService>(() => NavigationService());
  /// <<<<<<<<<<<<<<<<<<<<<<< System Configurations >>>>>>>>>>>>>>>>>>>>>>>>>
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColors.primaryBackGroundColor,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}
