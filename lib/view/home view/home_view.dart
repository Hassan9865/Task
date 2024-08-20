import 'package:flutter/material.dart';
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
                              const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Icon(Icons.key_outlined),
                              ),
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
                              const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Icon(Icons.key_outlined),
                              ),
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
