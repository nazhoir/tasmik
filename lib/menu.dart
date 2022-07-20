import 'package:flutter/material.dart';

var scaffoldKey = GlobalKey<ScaffoldState>();
@override
Widget build(BuildContext context) {
  return Scaffold(
    key: scaffoldKey,
    drawer: const Drawer(
      child: Text('create drawer widget tree here'),
    ),
    appBar: AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'appName',
        style: Theme.of(context).textTheme.headline2,
      ),
      leading: IconButton(
        onPressed: () {
          scaffoldKey.currentState?.openDrawer();
        },
        icon: Image.asset(
          'assets/images/menu.png',
          fit: BoxFit.cover,
        ),
      ),
    ),
    body: Container(),
  );
}
