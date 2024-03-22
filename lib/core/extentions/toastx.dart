import 'package:my_profile/exports.dart';

extension ToastX on ToastStats{

  Color toastColor(){
    return switch (this) {
      ToastStats.info => Colors.yellow.shade800,
      ToastStats.error => AppColors.timeRedText,
      ToastStats.success => AppColors.timeGreenText,
      ToastStats.warning => Colors.blue,
    };
  }

}