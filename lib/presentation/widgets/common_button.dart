
import 'package:my_profile/exports.dart';

class CommonAppButton extends StatelessWidget {
  final Function() onTap;
  final String title;
  final BoxDecoration? boxDecoration;
  final Color? backGroundColor;
  final Color? textColor;
  final double? normalFontSize;
  final double? height;
  final double? radius;
  final FontWeight? fontWeight;

  const CommonAppButton({
    super.key,
    required this.onTap,
    required this.title,
    this.boxDecoration,
    this.backGroundColor = AppColors.primaryColor,
    this.textColor = AppColors.white,
    this.normalFontSize = 18,
    this.height,
    this.radius,
    this.fontWeight = FontWeight.w700,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.relativeHeight(height ?? 6.66),
      decoration: boxDecoration ??
          BoxDecoration(
            color: backGroundColor,
            borderRadius: BorderRadius.circular(radius ?? 15),
          ),
      alignment: Alignment.center,
      child: CommonTextWidget(
        text: title,
        color: textColor,
        fontWeight: fontWeight,
        fontSize: normalFontSize,
      )
    ).addGestureTap(onTap: onTap);
  }
}
