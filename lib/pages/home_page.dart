import 'package:distance_guard_flutter/constants/colors.dart';
import 'package:distance_guard_flutter/pages/countries_page.dart';
import 'package:distance_guard_flutter/pages/dashboard_page.dart';
import 'package:distance_guard_flutter/pages/scanner_page.dart';
import 'package:distance_guard_flutter/pages/team_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pageSelectedIndex = 0;
  String _appBarTitle = "Dashboard";

  final _pageOptions = [
    DashboardPage(),
    CountriesPage(),
    ScannerPage(),
    TeamPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      body: _buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.public), label: 'Countries'),
          BottomNavigationBarItem(icon: Icon(Icons.radar), label: 'Scanner'),
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'Team'),
        ],
        currentIndex: _pageSelectedIndex,
        showUnselectedLabels: true,
        selectedItemColor: MyAppColor.primaryBlue,
        unselectedItemColor: MyAppColor.unselectedColor,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _pageSelectedIndex = index;
      _changeAppBarTitle(index);
    });
  }

  void _changeAppBarTitle(int index) {
    switch (index) {
      case 0:
        _appBarTitle = 'Dashboard';
        break;
      case 1:
        _appBarTitle = 'Countries';

        break;
      case 2:
        _appBarTitle = 'Scanner';
        break;
      case 3:
        _appBarTitle = 'Team';
        break;
    }
  }

  Widget _buildBody() {
    return Center(
      child: _pageOptions.elementAt(_pageSelectedIndex),
    );
  }
}
