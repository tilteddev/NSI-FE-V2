import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsf_v2/application/data/themes/app_themes.dart';
import 'package:nsf_v2/application/extensions/context_extension.dart';
import 'package:nsf_v2/presentation/screens/auth/login_screen_view_model.dart';
import 'package:nsf_v2/presentation/widgets/hoverable/mouse_hoverable_widget.dart';
import 'package:nsf_v2/presentation/widgets/textfield/text_field.dart';
import 'package:stacked/stacked.dart';

class LoginScreenMobile extends StackedView<LoginScreenViewModel> {
  const LoginScreenMobile({super.key});

  @override
  Widget builder(
      BuildContext context, LoginScreenViewModel viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: AppColor.lightGrey,
      body: Center(
        child: SizedBox(
          width: context.screenWidth * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                clipBehavior: Clip.antiAlias,
                padding: EdgeInsets.all(AppSpacing.s2),
                decoration: ShapeDecoration(
                  color: AppColor.primaryBlack,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                  shadows: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: SvgPicture.asset('assets/svg/logo.svg')
              ),
              SizedBox(height: AppSpacing.s16),
              MouseHoverableWidget(
                transformEffect: Matrix4.identity()..translate(0, -5, 0),
                builder: (isHovered) {
                  return TextFieldWidget(
                    prefixIcon: const Icon(size: 24, Icons.account_circle),
                    label: Text("Username", style: GoogleFonts.inter()),
                    onChanged: (value) {
                      viewModel.setUsernamePassword(false, value!);
                    }
                  );
                },
              ),
              const SizedBox(height: 16),
              MouseHoverableWidget(
                transformEffect: Matrix4.identity()..translate(0, -5, 0),
                builder: (isHovered) {
                  return TextFieldWidget(
                    label: Text("Password", style: GoogleFonts.inter()),
                    prefixIcon: const Icon(size: 24, Icons.key),
                    suffixIcon: InkWell(onTap:() => viewModel.setPasswordVisible(), child: const Icon(size: 24, Icons.visibility)),
                    obscureText: !viewModel.isPasswordVisible,
                    onChanged: (value) {
                      viewModel.setUsernamePassword(true, value!);
                    }
                  );
                },
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: () => viewModel.login(),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColor.primaryBlue
                  ),
                  child: Text(
                    'Login', 
                    style: GoogleFonts.dmSans(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16)
                  )
                )
              )
            ],
          )
        )
      )
    );
  }

  @override
  LoginScreenViewModel viewModelBuilder(BuildContext context) => LoginScreenViewModel(context);

  @override
  void onViewModelReady(LoginScreenViewModel viewModel);
}