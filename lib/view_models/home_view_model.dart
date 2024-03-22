import 'package:my_profile/exports.dart';
import 'package:my_profile/presentation/widgets/confirmation_dialog_widget.dart';
import 'package:my_profile/view_models/base_model.dart';

class HomeViewModel extends BaseModel{
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void onTapLogout(){
    showDialog(
      context: navigationService.navigationKey.currentContext!,
      barrierDismissible: false,
      builder: (context) {
        return ConfirmationDialogWidget(
          title: S.current.confirmation,
          message: S.current.logout_confirmation_message,
          onTapPositive: () {
            SharedPref.putBool(PrefKeys.isLogin, false);
            redirectWithClearBackStack(RouteNames.loginViewRoute);
          },
          onTapNegative: () {

          },
          positiveText: S.current.logout,
          negativeText: S.current.cancel,
        );
      },
    );
    // redirectWithClearBackStack(RoutePaths.signInViewRoute);
  }

  void onTapEdit(){
      navigateTo(RouteNames.editProfileRoute);
  }


}