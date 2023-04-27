import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ItemList(),
    );
  }
}

//================================ Home page ======================

class ItemList extends StatelessWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
//========================== AppBar =========================
//-----------------------------------------------------------

      appBar: AppBar(
        toolbarHeight: 100.0,
        elevation: 0,
        backgroundColor: Color.fromRGBO(132, 188, 72, 1),
        actions: <Widget>[

          //This portion for the notification action button
          IconButton(
            icon: Image.asset('image/bell.png'),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),


          //This portion for the logo action button
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: IconButton(
              icon: Image.asset('image/logo.png'),
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 10.0,)
        ],


        title: Row(
          children: [
//This portion for the human logo on top left
            // Flexible(
            //     child: Container(
            //   width: 50.64,
            //   height: 50.18,
            //   padding: EdgeInsets.all(0.0),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.all(Radius.circular(100)),
            //     color: Color.fromRGBO(155, 220, 84, 1),
            //   ),
            //   child: IconButton(
            //     iconSize: 90.0,
            //     icon: Image.asset('image/human.png'),
            //     padding: EdgeInsets.zero,
            //     tooltip: 'Show Snackbar',
            //     onPressed: () {
            //       ScaffoldMessenger.of(context).showSnackBar(
            //           const SnackBar(content: Text('This is a snackbar')));
            //     },
            //   ),
            // )),


            // This portion for the 2nd column on app bar, which has 2 rows
            Expanded(
              child: Column(
                children: [

                  //1st row inside the column
                  Container(
                    child: const Text(
                      'Amit Chawdhuri',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),


                  //2nd row inside the column, which contains one elaveted button with text and icon
                  Container(
                    margin: EdgeInsets.only(left: 10.00),
                    padding: EdgeInsets.only(left: 2.18, right: 1, top: 4.0),
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Color.fromRGBO(255, 255, 255, 1)),
                          shape: MaterialStateProperty
                              .all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(3.0),
                                  side: BorderSide(
                                    color:
                                    Color.fromRGBO(255, 255, 255, 1),
                                  )))),
                      onPressed: () {},
                      icon: Image.asset('image/balance.png'),
                      label: Text(
                        'ব্যালেন্স অনুসন্ধান',
                        style: TextStyle(
                            color: Color.fromRGBO(101, 161, 37, 1),
                            fontSize: 8.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

//=========================== Drawer ========================
//-----------------------------------------------------------

      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
//-------------------------- Arrow Icon ----------------------
            Container(
              alignment: Alignment.topRight,
              height: 47.0,
              color: Colors.lightGreen,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_outlined,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),

//-------------------------- Account Header -------------------
            const UserAccountsDrawerHeader(

              arrowColor: Colors.white,
              accountName:
              Text("Amit Kumar",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              accountEmail: Text("abcd@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("image/human.png"),
              ),


              decoration: BoxDecoration(

                color: Colors.green,
              ),

            ),


            const Divider(
              height: 1,
              thickness: 1,
            ),
            //------------------------ List View ------------------------

            const ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            const ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),




//============================ Body ============================
//----------------------------------------------------------------
      body: SafeArea(

        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
//========================== Card 1 ============================
            const Divider(
              height: 10,
              thickness: 2,
            ),
            Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                children: [
                  const SizedBox(),
                  Column(
                    children: <Widget>[
                      IconButton(
                        iconSize: 90.0,
                        icon: Image.asset('image/loan_return.png'),
                        padding: EdgeInsets.zero,
                        tooltip: 'Show Snackbar',
                        onPressed: () {
                          Navigator.of(context).pushNamed("/LoanPay");
                        },
                      ),
                      const Text(
                        'ঋণ পরিশোধ',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        iconSize: 90.0,
                        icon: Image.asset('image/shonchoy.png'),
                        padding: EdgeInsets.zero,
                        tooltip: 'Show Snackbar',
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('This is a snackbar')));
                        },
                      ),
                      const Text(
                        'সঞ্চয়',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        iconSize: 90.0,
                        icon: Image.asset(
                          'image/mobile_recharge.png',
                        ),
                        padding: EdgeInsets.zero,
                        tooltip: 'Show Snackbar',
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('This is a snackbar')));
                        },
                      ),
                      const Text(
                        'মোবাইল রিচার্জ',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        iconSize: 90.0,
                        icon: Image.asset('image/fund_transfer.png'),
                        padding: EdgeInsets.zero,
                        tooltip: 'Show Snackbar',
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('This is a snackbar')));
                        },
                      ),
                      const Text(
                        'ফান্ড ট্র্যান্সফার',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              height: 10,
              thickness: 2,
            ),
//========================== Card 2 ============================
            Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(),
                        Column(
                          children: <Widget>[
                            IconButton(
                              iconSize: 90.0,
                              icon: Image.asset('image/add_money.png'),
                              padding: EdgeInsets.zero,
                              tooltip: 'Show Snackbar',
                              onPressed: () {
                                Navigator.of(context).pushNamed("/AddMoney");
                              },
                            ),
                            const Text(
                              'টাকা যোগ',
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            IconButton(
                              iconSize: 90.0,
                              icon: Image.asset(
                                'image/fund_transfer.png',
                              ),
                              padding: EdgeInsets.zero,
                              tooltip: 'Show Snackbar',
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('This is a snackbar')));
                              },
                            ),
                            const Text(
                              'টাকা উত্তোলন',
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            IconButton(
                              iconSize: 90.0,
                              icon: Image.asset('image/pay_bill.png'),
                              padding: EdgeInsets.zero,
                              tooltip: 'Show Snackbar',
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('This is a snackbar')));
                              },
                            ),
                            const Text(
                              '(ইউটিলিটি) বিল প্রদান',
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            IconButton(
                              iconSize: 90.0,
                              icon: Image.asset('image/payment.png'),
                              padding: EdgeInsets.zero,
                              tooltip: 'Show Snackbar',
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('This is a snackbar')));
                              },
                            ),
                            const Text(
                              'পেমেন্ট',
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(),
                        Column(
                          children: <Widget>[
                            IconButton(
                              iconSize: 90.0,
                              icon: Image.asset('image/more.png'),
                              padding: EdgeInsets.zero,
                              tooltip: 'Show Snackbar',
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('This is a snackbar')));
                              },
                            ),
                            const Text(
                              'আরো',
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ],
                )),
            const Divider(
              height: 10,
              thickness: 2,
            ),
//========================== Card 3 ===========================
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                            padding: EdgeInsets.all(0.0),
                            child: InkResponse(
                              onTap: () {},
                              child: SizedBox(
                                width: 200,
                                child: Image.asset('image/add_one.png'),
                                //color: Colors.green,
                              ),
                            )),
                        Container(
                            padding: EdgeInsets.only(top: 23.0),
                            child: InkResponse(
                              onTap: () {},
                              child: SizedBox(
                                width: 200,
                                child: Image.asset('image/add_two.png'),
                                //color: Colors.grey,
                              ),
                            )),
                        Container(
                            padding: EdgeInsets.only(top: 23.0),
                            child: InkResponse(
                              onTap: () {},
                              child: SizedBox(
                                width: 200,
                                child: Image.asset('image/add_three.png'),
                                //color: Colors.green,
                              ),
                            )),
                        Container(
                            padding: EdgeInsets.only(top: 23.0),
                            child: InkResponse(
                              onTap: () {},
                              child: SizedBox(
                                width: 200,
                                child: Image.asset('image/add_two.png'),
                                //color: Colors.grey,
                              ),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              height: 10,
              thickness: 2,
            ),
          ],
        ),
      ),

//============================= Bottom NavBar ==================
//--------------------------------------------------------------

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: IconButton(
              //AssetImage("image/Home.png"),
              color: Color.fromRGBO(124, 178, 66, 1),
              onPressed: () {Navigator.of(context).pushNamed("/HomePage");},
              icon: Image.asset("image/Home.png"),
            ),
            label: 'হোম',
          ),

          BottomNavigationBarItem(
            icon: IconButton(

              color: Color.fromRGBO(124, 178, 66, 1),
              onPressed: () {Navigator.of(context).pushNamed("/LendenDetails");},
              icon: Image.asset("image/lenden.png"),
            ),
            label: 'বিস্তারিত লেনদেন',
          ),

          BottomNavigationBarItem(
            icon: IconButton(
              //AssetImage("image/Home.png"),
              color: Color.fromRGBO(124, 178, 66, 1),
              onPressed: () {Navigator.of(context).pushNamed("/inbox");},
              icon: Image.asset("image/inbox.png"),
            ),
            // ImageIcon(
            //   AssetImage("image/inbox.png"),

            // ),
            label: 'ইনবক্স',
          ),
        ],
        currentIndex: 1,
      ),
    ));
  }
}



