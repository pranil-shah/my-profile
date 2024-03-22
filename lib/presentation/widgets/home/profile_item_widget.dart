import 'package:my_profile/exports.dart';

class ProfileItemWidget extends StatelessWidget {
  final String? data;
  final IconData? icon;

  const ProfileItemWidget({
    Key? key,
    this.data,
    this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: AppColors.primaryColor,
          size: SizeConfig.setSp(16).toDouble(),
        ),
        SizeConfig.horizontalSpacer(2),
        CommonTextWidget(
          text: data ?? "",
          textAlign: TextAlign.center,
          color: AppColors.black,
        ),
      ],
    );
  }
}
