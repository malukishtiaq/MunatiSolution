import 'dart:io';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../common/all_enums.dart';
import '../../common/common_files.dart';
import '../../common/custom_text_field.dart';
import '../../common/validators.dart';
import '../../components/check_box.dart';
import '../../components/custom_text_field.dart';
import '../../components/full_width_button.dart';
import '../../components/signup_header.dart';
import '../../components/social_media_buttons.dart';
import 'login_view.form.dart';
import 'login_viewmodel.dart';
import 'package:stacked_shared/stacked_shared.dart';

// #1: Add the annotation
@FormView(
  fields: [
    FormTextField(
      name: 'email',
      initialValue: "munaticlient@gmail.com",
      validator: FormValidators.emailValidator,
    ),
    FormTextField(
      name: 'password',
      initialValue: "munaticlient",
      validator: FormValidators.passwordValidator,
      // customTextEditingController:
      //     CustomEditingController.getCustomEditingController
    ),
  ],
  autoTextFieldValidation: false,
)
class LoginView extends StackedView<LoginViewModel> with $LoginView {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      onViewModelReady: (viewModel) {
        syncFormWithViewModel(viewModel);
      },
      onDispose: (model) => disposeForm(),
      builder: (context, viewModel, child) => MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          backgroundColor: kcBackgroundColor,
          body: Column(
            children: <Widget>[
              const Expanded(
                flex: 20,
                child: SignupHeader(),
              ),
              Expanded(
                flex: 80,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: topLeftRoundContainer(),
                  height: topLeftRoundContainerHeight(context),
                  child: Expanded(
                    child: Column(
                      children: [
                        sizeBoxHeight10(),
                        Center(
                          child: Image.asset(
                            letterBoxIcon,
                            height: 72,
                            width: 72,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Center(
                          child: Text(
                            ksloginWelcomed,
                            style: signupHeaderTextStyle(),
                          ),
                        ),
                        sizeBoxHeight10(),
                        Positioned(
                          top: Platform.isAndroid ? 50 : 70,
                          left: 0,
                          right: 0,
                          child: const Text(
                            'Click Login Button Below to \n Login with your eMail',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16, color: kcTextBoxHintColor),
                          ),
                        ),
                        sizeBoxHeight10(),
                        Center(
                          child: thickGreenBar(),
                        ),
                        sizeBoxHeight10(),
                        CustomTextField(
                            ksloginUsernameEmailPhone, emailController),
                        if (viewModel.hasEmailValidationMessage)
                          Row(
                            children: [
                              verticalSpaceTiny,
                              Text(
                                viewModel.emailValidationMessage!,
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                  color: Colors.red,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        sizeBoxHeight10(),
                        CustomTextField(
                          ksPassword,
                          passwordController,
                          isPassword: true,
                        ),
                        if (viewModel.hasPasswordValidationMessage)
                          Row(
                            children: [
                              verticalSpaceTiny,
                              Text(
                                viewModel.passwordValidationMessage!,
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                  color: Colors.red,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        sizeBoxHeight10(),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomCheckbox(),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              ksRememberMe,
                            ),
                            const Flexible(
                                fit: FlexFit.tight, child: SizedBox()),
                            TextButton(
                              style: ButtonStyle(
                                padding:
                                    MaterialStateProperty.all(EdgeInsets.zero),
                              ),
                              onPressed: () async {
                                //forgetPassword();
                              },
                              child: const Text(
                                ksForgotPassword,
                                style: TextStyle(color: kcTextGreenColor),
                                textAlign: TextAlign.end,
                              ),
                            ),
                          ],
                        ),
                        FullWidthButton(
                          onPressed: () {
                            if (validateFormFields(viewModel)) {
                              viewModel.navigateToLandingView();
                            } else {
                              print("");
                            }
                          },
                          buttonText: ksLogin,
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Center(
                          child: Text(
                            ksLoginUsingSocial,
                            textAlign: TextAlign.center,
                            style: normalTextStyle(),
                          ),
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Center(
                          child: SocialMediaButtons(
                            facebookPressed: () =>
                                viewModel.navigateToSocialLogin(
                                    SocialMediaTypes.Facebook),
                            googlePressed: () => viewModel
                                .navigateToSocialLogin(SocialMediaTypes.Google),
                            linkedInPressed: () =>
                                viewModel.navigateToSocialLogin(
                                    SocialMediaTypes.LinkedIn),
                          ),
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                ksNoAccount,
                                textAlign: TextAlign.center,
                                style: normalTextStyle(),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.zero),
                                ),
                                onPressed: () =>
                                    viewModel.navigateToRegisterView(),
                                child: const Text(
                                  ksSignUp,
                                  style: TextStyle(
                                    color: kcTextGreenColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Platform.isAndroid ? 30 : 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void onDispose(LoginViewModel viewModel) {
    super.onDispose(viewModel);
    disposeForm();
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
