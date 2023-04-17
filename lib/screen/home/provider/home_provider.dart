import 'package:corona_api_provider/screen/home/modal/home_modal.dart';
import 'package:corona_api_provider/utils/api_helper.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  ApiHelper apiHelper = ApiHelper();
  HomeModal homeModal = HomeModal();
  TextEditingController countryc = TextEditingController();
  String country = "india";

  Future<void> coronaApiGet() async {
    var response = await apiHelper.coronaApiCall(country);
    homeModal = response!;
    notifyListeners();
  }

  void search() {
    country = countryc.text;
    notifyListeners();
  }
}
