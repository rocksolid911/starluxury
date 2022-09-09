import 'package:flutter/material.dart';

import '../widget/pendingcard.dart';

class Pending extends StatelessWidget {
  const Pending({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return PendingCard(size: size, wbText: 'Reject', rbText: 'Accept',);
        });
  }
}


