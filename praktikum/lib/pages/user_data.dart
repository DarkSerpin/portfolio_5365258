class UserData {
  String? name;
  String? email;
  String? about;
  double sliderValue = 50.0;
  Map<String, bool> settings = {
    'newsletter': false,
    'notifications': false,
    'darkMode': false,
    'offlineMode': false,
  };
}
