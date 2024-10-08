import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:stacked/stacked.dart';
import 'package:task/view/Bottom%20NavBar/bottomNavBar_viewModal.dart';
import 'package:task/view/Profile%20view/profile_view.dart';
import 'package:task/view/chat%20view/chat_view.dart';
import 'package:task/view/create%20view/create_view.dart';
import 'package:task/view/home%20view/home_view.dart';
import 'package:task/view/search%20view/search_view.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({super.key});

  @override
  Widget build(BuildContext context) {
    Widget getViewForIndex(int index) {
      switch (index) {
        case 0:
          return HomeView();
        case 1:
          return SearchView();
        case 2:
          return CreateView();
        case 3:
          return ChatView();
        case 4:
          return ProfileView();
        default:
          return HomeView();
      }
    }

    // int myindex = 0;
    // List<Widget> widgetList = [
    //   HomeView(),
    //   ProfileView(),
    //   Contactview(),
    //   NotificationView(),
    // ];
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => BottombarViewModel(),
        builder: (context, ViewModel, child) {
          return Scaffold(
            body: getViewForIndex(ViewModel.currentIndex), //IndexedStack(
            //   children: widgetList,
            //   index: myindex,
            // ),
            bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Colors.white,
                unselectedItemColor: Colors.black,
                selectedItemColor: Colors.grey[500],
                type: BottomNavigationBarType.fixed,
                onTap: ViewModel.setIndex, // (index) {
                //   // setState(() {
                //   //   myindex = index;
                //   // });
                // },
                currentIndex: ViewModel.currentIndex, //myindex,
                items: [
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/home-2.png'),
                      size: MediaQuery.of(context).size.width * 0.08,
                    ),
                    label: "Home",
                    backgroundColor: Colors.amber,
                  ),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/search-normal.png'),
                        size: MediaQuery.of(context).size.width * 0.08,
                      ),
                      label: "search",
                      backgroundColor: Colors.amber),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.yellow,
                    icon: ImageIcon(
                      AssetImage('assets/images/add-square.png'),
                      size: MediaQuery.of(context).size.width * 0.08,
                    ),
                    label: "Create",
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/messages-2.png'),
                      size: MediaQuery.of(context).size.width * 0.08,
                    ),
                    label: "Chat",
                    backgroundColor: Colors.yellow,
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/profile.png'),
                      size: MediaQuery.of(context).size.width * 0.08,
                    ),
                    label: "Profile",
                    backgroundColor: Colors.yellow,
                  ),
                ]),
          );
        });
  }
}
