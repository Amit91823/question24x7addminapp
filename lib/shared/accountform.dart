import 'package:flutter/material.dart';

class AccountForm extends StatefulWidget {
  @override
  _AccountFormState createState() => _AccountFormState();
}

class _AccountFormState extends State<AccountForm>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.keyboard_arrow_left,
                color: Colors.white,
                size: 40,
              ),
              onPressed: () {},
            ),
            title: Text(
              "Create Account",
              style: TextStyle(
                  color: Colors.white10,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )),
        body: Container(
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(5),
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: TabBar(
          controller: _tabController,
          indicatorColor: Colors.lightBlue,
          labelColor: Colors.lightBlue,
          tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.settings),
            ),
            Tab(
              icon: Icon(Icons.person),
            )
          ],
        ),
      ),
    );
  }
}
