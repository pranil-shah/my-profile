
import 'package:my_profile/exports.dart';

class NavigationService {

  static GlobalKey<NavigatorState> _navigationKey = GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState> get navigationKey => _navigationKey;
  void back() {
    return navigationKey.currentState?.pop();
  }

  Future<dynamic>? next(String routeName, {dynamic arguments}) {
    return navigationKey.currentState
        ?.pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic>? backAndNext(String routeName, {dynamic arguments}) {
    return navigationKey.currentState
        ?.popAndPushNamed(routeName, arguments: arguments);
  }

  Future<dynamic>? backAllAndNext(String routeName, {dynamic arguments}) {
    return navigationKey.currentState?.pushNamedAndRemoveUntil(
        routeName, (Route<dynamic> route) => false,
        arguments: arguments);
  }
}
