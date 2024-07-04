 import 'package:flutter/material.dart';
 import 'package:flutter_screenutil/flutter_screenutil.dart';
 import 'package:fokaha_delivery/core/constants/app_assets.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_core/layout_view.dart';
 import 'package:fokaha_delivery/features/prsentaion/views/onboarding/controller/onboarding_controller.dart';
 import 'package:get/get.dart';
 import 'package:smooth_page_indicator/smooth_page_indicator.dart';
 import '../../../../core/constants/color.dart';
 import '../../widgets/my_button.dart';
 import '../../widgets/my_text.dart';
import 'components/build_button.dart';
import 'model/onboarding_model.dart';


 class OnBoardingView extends GetView<OnboardingController>{

   @override
   Widget build(BuildContext context){

     return Scaffold(
       appBar: AppBar(

         leading: Padding(
           padding:  EdgeInsets.symmetric(horizontal: 8.0.r),
           child: SmoothPageIndicator(
             controller: controller.boardController,
             count:controller.boarding.length,
             effect: ExpandingDotsEffect(
                 dotColor: Colors.grey,
                 activeDotColor: Colors.grey,
                 dotHeight: 5.h,
                 dotWidth: 5.w,
                 expansionFactor: 8,
                 spacing: 3.0

             ),
           ),
         ),
         actions: [
           TextButton(

             child: Center(
               child: MyText(
                   text:'skip'.tr,
                   fontSize: 12.sp,
                   color: const Color(0xff565656)
               ),
             ),
             onPressed: (){




               // navigateAndFinish(context, const LoginScreen());
             },
           )
         ],

       ),
         body: Column(
           children: [

             MyText(
               text: 'hi'.tr,
               fontSize: 35.sp,
               fontWeight: FontWeight.bold,
             ),

             MyText(
               text: 'هذا النص هو مثال لنص يمكن تغيير',
               fontSize: 16.sp,
               color: Colors.grey,
               fontWeight: FontWeight.bold,

             ),

             Expanded(
               child: PageView.builder(
                 controller: controller.boardController,
                 onPageChanged: (index){
                   if(index == controller.boarding.length -1){


                     controller.isLast.value = true;

                   }

                   else{
                       controller.isLast.value = false ;
                 }
                 },
                 itemBuilder: (context,index)=> buildItem(controller.boarding[index],index,context),
                 itemCount: controller.boarding.length,
               ),

             ),



           ],
         )
     );
   }

   Widget buildItem(OnBoardingModel model,index,context)=>Padding(
     padding:  EdgeInsets.only(top: 25.0.r),
     child: SizedBox(
         width: double.infinity.w,
         child: Container(
           padding: EdgeInsetsDirectional.only(bottom: 50.r),
           height: MediaQuery.of(context).size.height / 1.5 ,
           width: double.infinity.w,
           decoration: const BoxDecoration(
               image: DecorationImage(
                   image: AssetImage(
                       AppAssets.picOnboardingDown,

                   ),
                   fit: BoxFit.fill
               )
           ),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               SizedBox(

                   child: Image.asset(  AppAssets.picOnboarding)

               ),



               Obx(() =>  controller.isLast.value ?  BuildButton() : MyButton(
                   background: Colors.white,
                   textColor: myColor,
                   text: 'explore the app'.tr, onPressed: (){

                 Get.to(() =>  LayoutView(),preventDuplicates: false);

               })
               )

             ],
           ),
         )
     ),
   );




 }



