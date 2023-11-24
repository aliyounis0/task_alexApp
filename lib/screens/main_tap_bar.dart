import 'package:flutter/material.dart';
import 'package:task_alexapps/custom_widget/share_body.dart';
import 'package:task_alexapps/screens/talabat_view.dart';

class TapBarView extends StatefulWidget {
  const TapBarView({super.key});

  @override
  State<TapBarView> createState() => _TapBarViewState();
}

class _TapBarViewState extends State<TapBarView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final _selectedColor = Colors.black;

  final _tabs = [
    const Tab(text: 'الملغاه'),
    const Tab(text: 'المنتهيه'),
    const Tab(text: 'الجاريه'),
    const Tab(text: 'الطلبات'),
  ];
  List<String> appBarTitle = [
    'الملغاة',
    'المنتهيه',
    'الجاريه',
    'الطلبات',
  ];

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _tabController.index;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          appBarTitle[_tabController.index],
          style: const TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 2,
                horizontal: 2,
              ),
              decoration: const BoxDecoration(
                color: Color(0xffECEAEC),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: TabBar(
                controller: _tabController,
                tabs: _tabs,
                unselectedLabelColor: Colors.black,
                labelColor: _selectedColor,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: const [
                ShareView(text: "الملغاة"),
                ShareView(text: "المنتهية"),
                ShareView(text: "الجارية"),
                TalabatView(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
