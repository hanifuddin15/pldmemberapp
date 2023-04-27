import 'package:flutter/material.dart';

class inbox extends StatefulWidget {
  const inbox({Key? key}) : super(key: key);

  @override
  State<inbox> createState() => _inboxState();
}

class _inboxState extends State<inbox> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   primarySwatch: Colors.lightGreen,
      // ),
      theme: ThemeData(
        // primarySwatch: Colors.yellow,

      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Color.fromRGBO(124, 178, 66, 1),
            bottom: const TabBar(
              tabs: [
                // Tab(child: TextButton(onPressed: onPressed, child: child),),
                Tab(child: Text('নোটিফিকেশন',
                    style: TextStyle(

                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                )),
                Tab(child: Text('লেনদেন সমূহ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ))
                // Tab(icon: Icon(Icons.directions_car)),
                // Tab(icon: Icon(Icons.directions_transit)),

              ],
            ),
            title: Text(
              "ইনবক্স",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Color.fromRGBO(134, 142, 127, 1),
              ),
              onPressed: () {
                Navigator.of(context).pop("/HomePage");
              },
            ),
          ),



          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),

            ],
          ),
        ),
      ),
    );
  }
}
