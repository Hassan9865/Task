import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:task/view/home%20view/home_viewModel.dart';
import 'package:task/view/home%20view/widget/container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewmodel(),
        builder: (context, HomeViewmodel viewModel, child) {
          return Scaffold(
            body: DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: AppBar(
                  title: const Row(
                    children: [
                      Text(
                        "Logo",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.verified,
                        color: Colors.grey,
                        size: 16,
                      ),
                    ],
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.notification_important_outlined,
                        size: MediaQuery.of(context).size.width * 0.08,
                      ),
                    )
                  ],
                  bottom: TabBar(
                    indicatorColor: Colors.grey,
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: Colors.grey,
                    labelStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 23),
                    labelPadding: EdgeInsets.all(12.00),
                    tabs: [Text("Public Feed"), Text("Business Feed")],
                  ),
                ),
                body: TabBarView(
                  children: [
                    // tab 1
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  "Feeds",
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: InkWell(
                                    onTap: () {
                                      modalBottomSheetMenu(context);
                                    },
                                    child:
                                        Image.asset('assets/images/Vector.png'),
                                  )),
                            ],
                          ),
                          MyContainerPost(
                            height: MediaQuery.of(context).size.height / 4.5,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MyContainerPost(
                            height: MediaQuery.of(context).size.height / 2,
                            custumchild: Container(
                              width: double.infinity,
                              child: Image.asset(
                                "assets/images/Photo.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // tab 2
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  "Feeds",
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: InkWell(
                                    onTap: () {
                                      modalBottomSheetMenu(context);
                                    },
                                    child: Container(
                                      child: Image.asset(
                                          'assets/images/Vector.png'),
                                    ),
                                  )),
                            ],
                          ),
                          MyContainerPost(
                            height: MediaQuery.of(context).size.height / 4.5,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MyContainerPost(
                            height: MediaQuery.of(context).size.height / 2,
                            custumchild: Container(
                              width: double.infinity,
                              child: Image.asset(
                                "assets/images/Photo.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

void modalBottomSheetMenu(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
    builder: (builder) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Indicator to show that the sheet can be dragged
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListTile(
                  title: Text(
                    'Topic 1',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Image.asset('assets/images/Vectorr.png'),
                  tileColor:
                      Color(0xff5DC482), // Highlight first item with blue color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              ListTile(
                title: Text('Topic 2'),
                leading: Image.asset('assets/images/Vectorr.png'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              ListTile(
                title: Text('Topic 3'),
                leading: Image.asset('assets/images/Vectorr.png'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              ListTile(
                title: Text('Topic 4'),
                leading: Image.asset('assets/images/Vectorr.png'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}
