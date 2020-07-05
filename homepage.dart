import 'package:flutter/material.dart';
import 'package:shreya/getAppBar.dart';


import 'package:shreya/users.dart';

import 'overlap_image.dart';



class HomePage extends StatelessWidget {
  final List<Users> user =getDataFromServer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar('People',Colors.grey.shade500),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(8),
        child: OverlapImges(
          users: user,
        ),
    )
    );
  }
}