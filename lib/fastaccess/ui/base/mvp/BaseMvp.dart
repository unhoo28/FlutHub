abstract class FAView {
  bool isLoggedIn();
  void onRequireLogin();
  void onLogoutPressed();
  void onThemeChanged();
  void onOpenSettings();
  bool isEnterprise();
  void onOpenUrlInBrowser();
}

abstract class FAPresemter {}
