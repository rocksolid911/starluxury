import 'package:flutter/material.dart';
import 'package:starluxury/Home/screen/inprogresstab.dart';
import 'package:starluxury/Home/screen/pendingtab.dart';
import 'package:starluxury/Home/screen/upcomingtab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Center(
                  child: Text(
                    "Tabbar with out Appbar",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                color: Colors.black,
              ),
              Container(
                decoration: BoxDecoration(
                  color:  Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),

                margin: EdgeInsets.symmetric(horizontal: 16),
                child: TabBar(
                  unselectedLabelColor: Colors.white,
                  labelColor: Colors.white,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      12.0,
                    ),
                    color: Colors.red,
                  ),
                  tabs: [
                    Tab(
                      text: 'pending',
                    ),
                    Tab(
                      text: 'upcoming',
                    ),
                    Tab(
                      text: 'in progress',
                    ),
                  ],
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: TabBarView(
                    children: [
                      Pending(),
                     UpComingTab(),
                    InProgress()
                    ],
                    controller: _tabController,
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
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

