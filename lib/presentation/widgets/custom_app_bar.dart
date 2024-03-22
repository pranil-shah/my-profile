import 'package:my_profile/exports.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onTapLeading;
  final Widget? leadingWidget;
  final String title;
  final List<Widget>? actions;

  const CustomAppBar(
      {super.key,
      this.onTapLeading,
      this.leadingWidget,
      required this.title,
      this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.primaryBackGroundColor,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.primaryBackGroundColor,
        statusBarIconBrightness: Brightness.dark,
      ),
      leading: leadingWidget,
      title: CommonTextWidget(
        text: title,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.black,
        textAlign: TextAlign.center,
      ),
      centerTitle: true,
      actions: actions,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      Size(double.infinity, SizeConfig.relativeHeight(6.40));
}
