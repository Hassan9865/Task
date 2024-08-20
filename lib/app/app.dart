import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:task/view/Bottom%20NavBar/bottomNav_bar.dart';
import 'package:task/view/Profile%20view/profile_view.dart';
import 'package:task/view/chat%20view/chat_view.dart';
import 'package:task/view/create%20view/create_view.dart';
import 'package:task/view/home%20view/home_view.dart';
import 'package:task/view/search%20view/search_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: Bottombar, initial: true),
  MaterialRoute(page: HomeView),
  MaterialRoute(page: CreateView),
  MaterialRoute(page: ChatView),
  MaterialRoute(page: ProfileView),
  MaterialRoute(page: SearchView),
], dependencies: [
  Singleton(classType: NavigationService),
])
class app {}
