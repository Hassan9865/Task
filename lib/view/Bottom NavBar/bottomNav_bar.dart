import 'package:flutter/material.dart';

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
                backgroundColor: const Color(0xFF084A76),
                unselectedItemColor: Colors.white,
                selectedItemColor: Colors.grey[500],
                type: BottomNavigationBarType.fixed,
                onTap: ViewModel.setIndex, // (index) {
                //   // setState(() {
                //   //   myindex = index;
                //   // });
                // },
                currentIndex: ViewModel.currentIndex, //myindex,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: "Home",
                      backgroundColor: Colors.amber),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.search,
                      ),
                      label: "search",
                      backgroundColor: Colors.amber),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.yellow,
                    icon: Icon(Icons.create),
                    label: "Create",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.chat),
                    label: "Chat",
                    backgroundColor: Colors.yellow,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: "Profile",
                    backgroundColor: Colors.yellow,
                  ),
                ]),
          );
        });
  }
}
