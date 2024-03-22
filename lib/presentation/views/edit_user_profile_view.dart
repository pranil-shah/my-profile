import 'package:my_profile/exports.dart';
import 'package:my_profile/presentation/widgets/common_button.dart';
import 'package:my_profile/presentation/widgets/common_text_field.dart';
import 'package:my_profile/view_models/user/edit_user_profile_view_model.dart';

class EditUserProfileView extends StatelessWidget {
  const EditUserProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EditProfileViewModel>.reactive(
      viewModelBuilder: () => EditProfileViewModel(),
      onViewModelReady: (viewModel) => viewModel.onInit(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: AppColors.primaryBackGroundColor,
          appBar: CustomAppBar(
            title: "Edit Profile",
            leadingWidget: const Icon(Icons.arrow_back_rounded).addGestureTap(
              onTap: model.onTapBack,
            ),
          ),
          body: CentralLoader(
            centralViewState: model.viewState,
            baseChild: _getBody(context, model),
          ),
        );
      },
    );
  }

  Widget _getBody(BuildContext ctx, EditProfileViewModel model) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.relativeWidth(4.27),
          vertical: SizeConfig.relativeHeight(1.48)),
      child: Column(
        children: [
          model.selectedImage != null
              ? Container(
                  height: SizeConfig.relativeWidth(25),
                  width: SizeConfig.relativeWidth(25),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryColor,
                    image: DecorationImage(
                      image: FileImage(
                        File(model.selectedImage!.path),
                      ),
                    ),
                  ),
                ).addGestureTap(onTap: model.pickImageFromGallery)
              : Container(
                  height: SizeConfig.relativeWidth(25),
                  width: SizeConfig.relativeWidth(25),
                  decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: CommonTextWidget(
                    text: model.profileData.name!.createAvatarName(),
                    color: AppColors.white,
                    fontSize: SizeConfig.relativeSize(12),
                  ),
                ).addGestureTap(onTap: model.pickImageFromGallery),
          SizeConfig.verticalSpacer(2),
          CommonTextFiled(
            controller: model.nameController,
            hintText: S.current.enter_name,
            readOnly: model.isEditable,
            onChanged: (String value) {},
            onEditingComplete: () {},
            onSubmitted: (String value) {
              model.unFocus();
            },
            maxLines: 1,
            suffixWidget: Padding(
              padding:  EdgeInsets.symmetric(
                  horizontal: SizeConfig.relativeWidth(5)
              ),
              child: const Icon(Icons.edit),
            ).addGestureTap(onTap: model.onTapEdit),
          ),
          SizeConfig.verticalSpacer(2),
          CommonTextFiled(
            controller: model.emailController,
            hintText: S.current.enter_email,
            readOnly: model.isEditable,


            onChanged: (String value) {},
            onEditingComplete: () {},
            onSubmitted: (String value) {
              model.unFocus();
            },
            maxLines: 1,
            suffixWidget: Padding(
              padding:  EdgeInsets.symmetric(
                  horizontal: SizeConfig.relativeWidth(5)
              ),
              child: const Icon(Icons.edit),
            ).addGestureTap(onTap: model.onTapEdit),
          ),
          SizeConfig.verticalSpacer(2),
          CommonTextFiled(
            controller: model.skillsTxtController,
            hintText: S.current.enter_skills,
            readOnly: model.isEditable,

            onChanged: (String value) {},
            onEditingComplete: () {},
            onSubmitted: (String value) {
              model.unFocus();
            },
            maxLines: 1,
            suffixWidget: Padding(
              padding:  EdgeInsets.symmetric(
                  horizontal: SizeConfig.relativeWidth(5)
              ),
              child: const Icon(Icons.edit),
            ).addGestureTap(onTap: model.onTapEdit),
          ),
          SizeConfig.verticalSpacer(2),
          CommonTextFiled(
            controller: model.workExperienceController,
            hintText: S.current.enter_experience,
            keyboardType: TextInputType.number,
            readOnly: model.isEditable,
            onChanged: (String value) {},
            onEditingComplete: () {},
            onSubmitted: (String value) {
              model.unFocus();
            },
            suffixWidget: Padding(
              padding:  EdgeInsets.symmetric(
                horizontal: SizeConfig.relativeWidth(5)
              ),
              child: const Icon(Icons.edit),
            ).addGestureTap(onTap: model.onTapEdit),
            maxLines: 1,
          ),
          SizeConfig.verticalSpacer(8),
          CommonAppButton(onTap: model.onTapSave, title: S.current.save),
        ],
      ),
    );
  }
}
