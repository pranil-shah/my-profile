
import 'package:my_profile/exports.dart';

class CommonTextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final String? fontFamily;
  final double? fontSize;
  final FontStyle? fontStyle;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextStyle? textStyle;

  const CommonTextWidget(
      {super.key,
      required this.text,
      this.color,
      this.fontFamily,
      this.fontSize = 13,
      this.fontStyle,
      this.fontWeight,
      this.textAlign,
      this.overflow,
      this.maxLines,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle ??
          TextStyle(
            color: color ?? AppColors.primaryColor,
            fontFamily: fontFamily ?? GoogleFonts.publicSans().fontFamily,
            fontSize: SizeConfig.setSp(fontSize!).toDouble(),
            fontStyle: fontStyle,
            fontWeight: fontWeight ?? FontWeight.normal,
          ),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
