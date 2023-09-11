import 'dart:io';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../common/all_enums.dart';
import '../../common/common_files.dart';
import '../../components/custom_text_field.dart';
import '../../components/full_width_button.dart';
import '../../components/signup_header.dart';
import '../../components/social_media_buttons.dart';
import 'register_viewmodel.dart';

class RegisterView extends StackedView<RegisterViewModel> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RegisterViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        children: <Widget>[
          const Expanded(
            flex: 2,
            child: SignupHeader(),
          ),
          Expanded(
            flex: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: topLeftRoundContainer(),
              height: topLeftRoundContainerHeight(context),
              child: Column(
                children: [
                  sizeBoxHeight10(),
                  Center(
                    child: Text(
                      ksSignUp,
                      style: signupHeaderTextStyle(),
                    ),
                  ),
                  sizeBoxHeight10(),
                  Center(
                    child: thickGreenBar(),
                  ),
                  sizeBoxHeight10(),
                  CustomTextField(ksFirstName),
                  sizeBoxHeight10(),
                  CustomTextField(ksLastName),
                  sizeBoxHeight10(),
                  CustomTextField(ksPhoneNumber),
                  sizeBoxHeight10(),
                  CustomTextField(ksEmail),
                  sizeBoxHeight10(),
                  sizeBoxHeight10(),
                  sizeBoxHeight10(),
                  Center(
                    child: thinGreenBar(),
                  ),
                  sizeBoxHeight10(),
                  sizeBoxHeight10(),
                  sizeBoxHeight10(),
                  FullWidthButton(
                    onPressed: () => viewModel.navigateToCredentials(),
                    buttonText: ksNext,
                  ),
                  const Flexible(fit: FlexFit.tight, child: SizedBox()),
                  Center(
                    child: Text(
                      ksSignupUsingSocial,
                      textAlign: TextAlign.center,
                      style: normalTextStyle(),
                    ),
                  ),
                  const Flexible(fit: FlexFit.tight, child: SizedBox()),
                  Center(
                    child: SocialMediaButtons(
                      facebookPressed: () =>
                          viewModel.navigateToSocialMediaSignup(
                              SocialMediaTypes.Facebook),
                      googlePressed: () => viewModel
                          .navigateToSocialMediaSignup(SocialMediaTypes.Google),
                      linkedInPressed: () =>
                          viewModel.navigateToSocialMediaSignup(
                              SocialMediaTypes.LinkedIn),
                    ),
                  ),
                  const Flexible(fit: FlexFit.tight, child: SizedBox()),
                  const TermsCondition(),
                  SizedBox(
                    height: Platform.isAndroid ? 30 : 40,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  RegisterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RegisterViewModel();
}

class TermsCondition extends StatelessWidget {
  const TermsCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ksYouAgree,
            textAlign: TextAlign.center,
            style: normalTextStyle(),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            ksTermsCondition,
            style: TextStyle(
              color: kcTextGreenColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
