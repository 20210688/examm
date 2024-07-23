
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home';
  int _selectedIndex =0 ;
  void _onItemTapped(int index){
   _selectedIndex =index ;
  }
  final List<String> _index = [
    'assets/images/Image Placeholder 1 (1).png',
    'assets/images/Image Placeholder 1.png',
    'assets/images/Image Placeholder 1 (1).png',
    'assets/images/Image Placeholder 1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/Logo.png', width: 180, height: 130),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings_outlined),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See more',
                      style: TextStyle(color: Color(0xff4838D1)),
                    ),
                  ),
                ],
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    labelPadding: const EdgeInsets.only(left: 20, right: 20),
                    isScrollable: true,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.blue,
                    tabs: [

                      Tab(text: 'Art'),
                      Tab(text: 'Business'),
                      Tab(text: 'Comedy'),
                      Tab(text: 'Drama'),
                    ],

                  ),
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    'Recommended For You',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Text(
                    'see more',
                    style: TextStyle(
                      color: Color(0xff4838D1),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.only(left: 0.30),
                width: double.maxFinite,
                height: 300,
                child: TabBarView(
                  children: [
                    ListView.builder(
                      itemCount: _index.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 20, top: 10),
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(_index[index]),
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: _index.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 20, top: 10),
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(_index[index]),
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: _index.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 20, top: 10),
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(_index[index]),
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: _index.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 20, top: 10),
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(_index[index]),
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Best Seller',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'see more',
                    style: TextStyle(
                      color: Color(0xff4838D1),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 20), // Adjusted width for spacing
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: _index.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color(0xffF5F5FA),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/Image Placeholder 2.png',
                                    width: 150,
                                    height: 80,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Light Mage',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 2),
                                      Text(
                                        'Laurie Forest',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w200,
                                          color: Colors.grey,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              label: 'Library',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xff4838D1),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}





