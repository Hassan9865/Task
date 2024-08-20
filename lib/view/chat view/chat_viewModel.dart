import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:task/app/app.locator.dart';
import 'package:task/app/app.router.dart';

class ChatViewmodel extends BaseViewModel {
  final NavigationService navigationService = locator<NavigationService>();

  navigatetochattingView() {
    navigationService.navigateToChattingView();
  }
}
