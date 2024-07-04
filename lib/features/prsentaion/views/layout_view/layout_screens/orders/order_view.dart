import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_screens/orders/components/current_order_item.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_screens/orders/components/previous_order_item.dart';
import 'package:get/get.dart';
import '../../../../../../core/constants/color.dart';
import '../../../../widgets/custom_app_bar.dart';
import 'controller/order_controller.dart';

class OrderView extends GetView<OrderController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Column(
          children: [
            TabBar(
              physics: const BouncingScrollPhysics(),
              indicatorColor: myColor,
              unselectedLabelColor: Colors.black,
              labelColor: myColor,
              padding: EdgeInsetsDirectional.symmetric(vertical: 5.r),
              tabs: [
                Tab(
                  child: Text(
                    'current_requests'.tr,
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
                Tab(
                  child: Text(
                    'previous_requests'.tr,
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                physics: const BouncingScrollPhysics(),
                children: [

                  ListView.builder(


                    itemBuilder: (context, index) {
                    return CurrentOrderItem();
                  },
                  itemCount: 10,

                  ),
                  ListView.builder(


                    itemBuilder: (context, index) {
                      return PreviousOrderItem();
                    },
                    itemCount: 10,

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
