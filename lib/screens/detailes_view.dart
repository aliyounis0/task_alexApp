import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_alexapps/custom_widget/custom_box.dart';
import 'package:task_alexapps/custom_widget/custom_detailes_widget.dart';
import 'package:task_alexapps/custom_widget/divider_widget.dart';
import 'package:task_alexapps/custom_widget/google_map_widget.dart';
import 'package:task_alexapps/custom_widget/location_backing.dart';

class DetailesView extends StatelessWidget {
  const DetailesView({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    List<Widget> imagesList = [
      ClipRRect(
        borderRadius: const BorderRadiusDirectional.all(Radius.circular(20)),
        child: Image.asset(
          "assits/images/box.jpg",
          fit: BoxFit.fill,
        ),
      ),
      ClipRRect(
        borderRadius: const BorderRadiusDirectional.all(Radius.circular(20)),
        child: Image.asset(
          "assits/images/car.jpeg",
          fit: BoxFit.fill,
        ),
      ),
      ClipRRect(
        borderRadius: const BorderRadiusDirectional.all(Radius.circular(20)),
        child: Image.asset(
          "assits/images/Flag_of_Saudi_Arabia.svg.png",
          fit: BoxFit.fill,
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_outlined),
        ),
        title: const Text(
          "تفاصيل الطلب",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 180,
                child: PageView(
                  controller: pageController,
                  children: imagesList,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SmoothPageIndicator(
                controller: pageController,
                effect: const ExpandingDotsEffect(
                  dotColor: Colors.grey,
                  dotHeight: 10.0,
                  dotWidth: 10.0,
                  spacing: 5.0,
                  expansionFactor: 1.00001,
                  activeDotColor: Colors.blue,
                ),
                count: imagesList.length,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsetsDirectional.all(10),
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: .4),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(children: [
                      Text(
                        "ابو فهد عبد العزيز",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "السعودية",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(
                        "assits/images/box.jpg",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LocationBacking(),
                  LocationBacking(),
                ],
              ),
              const DividerWidget(),
              const CustomDetailesWidget(
                weight: '100 طن',
                type: 'وزن الشحنة',
                icon: Icons.add_box_rounded,
              ),
              const DividerWidget(),
              const CustomDetailesWidget(
                weight: 'صندوق 60 ',
                type: ' عددالحاويات',
                icon: Icons.add_box_rounded,
              ),
              const DividerWidget(),
              const CustomDetailesWidget(
                weight: '100 طن',
                type: ' عددالمركبات',
                icon: Icons.car_rental_rounded,
              ),
              const DividerWidget(),
              const CustomDetailesWidget(
                weight: 'دينا - دينا بطحاء ',
                type: ' نوع المركبات',
                icon: Icons.car_rental_rounded,
              ),
              const DividerWidget(),
              const Text(
                "اريد توصيل شحنة خشب الي ميناء جدة وزن الشحنة 100 طن ",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: const GoogleMapWidget(),
                ),
              ),
              const DividerWidget(),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "تحديد السعر بين العميل والسائق",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "2500 ريال",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "السعر الحالي",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBox(text: "رفض", icon: Icons.cancel_outlined),
                  CustomBox(text: "موافقة", icon: Icons.done_outline),
                  CustomBox(text: "قدم عرض", icon: Icons.camera_alt_rounded),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
