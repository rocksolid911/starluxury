import 'package:flutter/material.dart';

import '../widget/pendingcard.dart';

class UpComingTab extends StatefulWidget {
  const UpComingTab({Key? key}) : super(key: key);

  @override
  State<UpComingTab> createState() => _UpComingTabState();
}

class _UpComingTabState extends State<UpComingTab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return PendingCard(size: size, wbText: 'Change Status', rbText: 'Start Trip',);
        });
  }
}
