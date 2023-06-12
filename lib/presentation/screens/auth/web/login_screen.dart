import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsf_v2/application/data/themes/app_color.dart';
import 'package:nsf_v2/application/extensions/context_extension.dart';
import 'package:nsf_v2/presentation/screens/auth/login_screen_view_model.dart';
import 'package:nsf_v2/presentation/widgets/hoverable/mouse_hoverable_widget.dart';
import 'package:nsf_v2/presentation/widgets/textfield/text_field.dart';
import 'package:stacked/stacked.dart';

class LoginScreenWeb extends StackedView<LoginScreenViewModel> {
  const LoginScreenWeb({super.key});

  @override
  Widget builder(
      BuildContext context, LoginScreenViewModel viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: AppColor.lightGrey,
      body: Center(
        child: SizedBox(
          width: context.screenWidth / 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/nia-blue-trans.png', 
                  height: (context.screenWidth / 2) * 0.6, 
                  width: (context.screenWidth / 2) * 0.6
                ),
              ),
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
                    color: AppColor.blue
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

  @override
  bool get fireOnViewModelReadyOnce => true;
}