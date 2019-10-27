/**
 * @author [Tilak]
 * @email [tpymca07@gmail.com]
 * @create date 2019-10-27 15:57:50
 * @modify date 2019-10-27 15:59:06
 * @desc [This is the project for production ready app & this page provide home details]
 */

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: false,
      ),
      body: Center(
        child: Text('My application for Bloc home'),
      ),
    );
  }
}