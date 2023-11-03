import 'package:final_project/widgets/home_bottom_bar.dart';
import 'package:final_project/widgets/items_widget.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.sort_rounded,
                        color: const Color.fromARGB(255, 65, 65, 65),
                        size: 35,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        color: const Color.fromARGB(255, 66, 66, 66),
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Have a lovely day with ice-cream:)",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 27, 27, 27),
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 68, 68, 68).withOpacity(0.2), // Shadow color
                      blurRadius: 10.0, // Blur radius
                      spreadRadius: 2.0, // Spread radius
//offset: Offset(0, 4), // Offset from the container
                    ),
                  ],
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search your ice-cream",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 66, 66, 66),
                    ),
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      size: 30,
                      color: Color.fromARGB(255, 66, 66, 66),
                    ),
                  ),
                ),
              ),

              TabBar(
                controller: _tabController,
                labelColor: Colors.pink,
                unselectedLabelColor: Colors.white.withOpacity(0.5),
                isScrollable: true,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.pink,
                  ),
                  insets: EdgeInsets.symmetric(horizontal: 16),
                ),
                labelStyle:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                labelPadding: EdgeInsets.symmetric(horizontal: 20),
                tabs: [
                  Tab(text: "Menu"),
                  // Tab(text: "Clear Matcha"),
                  // Tab(text: "Mocktail Matcha"),
                  // Tab(text: "Houjicha Tea",)
                ],
              ), //tabbar is show menu of matcha tab
              SizedBox(height: 10),
              Center(
                child: [
                  ItemsWidget(),
                  // ItemsWidget(),
                  // ItemsWidget(),
                  // ItemsWidget(),
                ][_tabController.index],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
