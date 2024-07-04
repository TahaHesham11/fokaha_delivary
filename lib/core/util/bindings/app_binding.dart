import 'package:fokaha_delivery/features/prsentaion/views/auth/login/controller/login_controller.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/password_reset/controller/password_reset_controller.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/register/controller/register_controller.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/reset_new_password/controller/reset_new_password_controller.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/success_acount/controller/success_account_controller.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/verification/controller/verification_controller.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_core/controller/layout_controller.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_screens/orders/controller/order_controller.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_screens/user/controller/order_controller.dart';
import 'package:fokaha_delivery/features/prsentaion/views/more_screens/chat_user/controller/chat_user_controller.dart';
import 'package:fokaha_delivery/features/prsentaion/views/more_screens/customer_service/controller/customer_service_controller.dart';
import 'package:fokaha_delivery/features/prsentaion/views/more_screens/profile/controller/profile_controller.dart';
import 'package:fokaha_delivery/features/prsentaion/views/more_screens/wallet/controller/wallet_controller.dart';
import 'package:fokaha_delivery/features/prsentaion/views/onboarding/controller/onboarding_controller.dart';
import 'package:get/get.dart';

import '../../../features/prsentaion/views/auth/create_account/controller/create_account_controller.dart';
import '../../../features/prsentaion/views/auth/otp_password/controller/otp_controller.dart';
import '../../../features/prsentaion/views/auth/otp_register/controller/otp_register_controller.dart';
import '../../../features/prsentaion/views/more_screens/change_password_profile/controller/change_password_profile_controller.dart';
import '../../../features/prsentaion/views/more_screens/chat/controller/chat_controller.dart';
import '../../../features/prsentaion/views/more_screens/order_details/controller/order_details_controller.dart';
import '../../../features/prsentaion/views/more_screens/privacy/controller/privacy_controller.dart';
import '../../../features/prsentaion/views/more_screens/problem/controller/problem_controller.dart';
import '../../../features/prsentaion/views/more_screens/terms/controller/terms_controller.dart';

class AppBinding extends Bindings {

  void dependencies() {

    Get.lazyPut<OnboardingController>(() => OnboardingController(), fenix: true);
    Get.lazyPut<LayoutController>(() => LayoutController(), fenix: true);
    Get.lazyPut<LoginController>(() => LoginController(), fenix: true);
    Get.lazyPut<RegisterController>(() => RegisterController(), fenix: true);
    Get.lazyPut<SuccessAccountController>(() => SuccessAccountController(), fenix: true);
    Get.lazyPut<PasswordResetController>(() => PasswordResetController(), fenix: true);
    Get.lazyPut<OtpController>(() => OtpController(), fenix: true);
    Get.lazyPut<ResetNewPasswordController>(() => ResetNewPasswordController(), fenix: true);
    Get.lazyPut<VerificationController>(() => VerificationController(), fenix: true);
    Get.lazyPut<OtpRegisterController>(() => OtpRegisterController(), fenix: true);
    Get.lazyPut<CreateAccountController>(() => CreateAccountController(), fenix: true);
    Get.lazyPut<OrderController>(() => OrderController(), fenix: true);
    Get.lazyPut<UserController>(() => UserController(), fenix: true);
    Get.lazyPut<WalletController>(() => WalletController(), fenix: true);
    Get.lazyPut<ProfileController>(() => ProfileController(), fenix: true);
    Get.lazyPut<CustomerServiceController>(() => CustomerServiceController(), fenix: true);
    Get.lazyPut<TermsController>(() => TermsController(), fenix: true);
    Get.lazyPut<PrivacyController>(() => PrivacyController(), fenix: true);
    Get.lazyPut<OrderDetailsController>(() => OrderDetailsController(), fenix: true);
    Get.lazyPut<ChangePasswordProfileController>(() => ChangePasswordProfileController(), fenix: true);
    Get.lazyPut<ChatController>(() => ChatController(), fenix: true);
    Get.lazyPut<ProblemController>(() => ProblemController(), fenix: true);
    Get.lazyPut<ChatUserController>(() => ChatUserController(), fenix: true);

  }
}
