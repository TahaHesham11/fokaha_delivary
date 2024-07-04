import 'package:fokaha_delivery/core/util/app_routes/string_routes.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/login/login_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/otp_register/otp_register_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/password_reset/password_reset_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/register/register_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/reset_new_password/reset_new_password_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/success_acount/success_account_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/verification/verification_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_core/layout_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_screens/orders/order_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/more_screens/change_password_profile/change_password_profile_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/more_screens/chat/chat_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/more_screens/chat_user/chat_user_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/more_screens/problem/problem_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/more_screens/profile/profile_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/more_screens/terms/terms_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/more_screens/wallet/wallet_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/onboarding/onboarding_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../../features/prsentaion/views/auth/create_account/create_account_view.dart';
import '../../../features/prsentaion/views/auth/otp_password/otp_view.dart';
import '../../../features/prsentaion/views/layout_view/layout_screens/user/user_view.dart';
import '../../../features/prsentaion/views/more_screens/customer_service/customer_service_view.dart';
import '../../../features/prsentaion/views/more_screens/order_details/orders_details_view.dart';
import '../../../features/prsentaion/views/more_screens/privacy/privacy_view.dart';
import '../bindings/app_binding.dart';

class GetPagesList {
  static List<GetPage> pages = [
    GetPage(
      name: StringRoutes.onBoarding,
      page: () => OnBoardingView(),
      bindings: [AppBinding()],
    ),
    GetPage(
      name: StringRoutes.layout,
      page: () => LayoutView(),
      bindings: [AppBinding()],

    ),
    GetPage(
      name: StringRoutes.login,
      page: () => LoginView(),
      bindings: [AppBinding()],

    ),
    GetPage(
      name: StringRoutes.register,
      page: () => RegisterView(),
      bindings: [AppBinding()],

    ),
    GetPage(
      name: StringRoutes.successAccount,
      page: () => SuccessAccountView(),
      bindings: [AppBinding()],

    ),
    GetPage(
      name: StringRoutes.passwordReset,
      page: () => PasswordResetView(),
      bindings: [AppBinding()],

    ),
    GetPage(
      name: StringRoutes.verification,
      page: () => VerificationView(),
      bindings: [AppBinding()],

    ),
    GetPage(
      name: StringRoutes.otp,
      page: () => OtpView(),
      bindings: [AppBinding()],

    ),
    GetPage(
      name: StringRoutes.resetNewPassword,
      page: () => ResetNewPasswordView(),
      bindings: [AppBinding()],

    ),
    GetPage(
      name: StringRoutes.otpRegister,
      page: () => OtpRegisterView(),
      bindings: [AppBinding()],

    ),
    GetPage(
      name: StringRoutes.createAccount,
      page: () => CreateAccountView(),
      bindings: [AppBinding()],

    ),
    GetPage(
      name: StringRoutes.order,
      page: () => OrderView(),
      bindings: [AppBinding()],

    ),
    GetPage(
      name: StringRoutes.user,
      page: () => UserView(),
      bindings: [AppBinding()],

    ),
    GetPage(
      name: StringRoutes.wallet,
      page: () => WalletView(),
      bindings: [AppBinding()],

    ),
    GetPage(
      name: StringRoutes.profile,
      page: () => ProfileView(),
      bindings: [AppBinding()],

    ),
    GetPage(
      name: StringRoutes.customerService,
      page: () => CustomServiceView(),
      bindings: [AppBinding()],

    ),
    GetPage(
      name: StringRoutes.privacy,
      page: () => PrivacyView(),
      bindings: [AppBinding()],

    ),
    GetPage(
      name: StringRoutes.orderDetails,
      page: () => OrderDetailsView(),
      bindings: [AppBinding()],

    ),
    GetPage(
      name: StringRoutes.changePasswordProfile,
      page: () => ChangePasswordProfileView(),
      bindings: [AppBinding()],

    ),
    GetPage(
      name: StringRoutes.chat,
      page: () => ChatView(),
      bindings: [AppBinding()],

    ),
    GetPage(
      name: StringRoutes.problem,
      page: () => ProblemView(),
      bindings: [AppBinding()],

    ),
    GetPage(
      name: StringRoutes.chatUser,
      page: () => ChatUserView(),
      bindings: [AppBinding()],

    ),


  ];

}


