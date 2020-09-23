import 'package:fasthub/fastaccess/data/dao/AccessTokenModel.dart';
import 'package:fasthub/fastaccess/data/dao/model/Login.dart';
import 'package:fasthub/fastaccess/ui/base/mvp/BaseMvp.dart';

abstract class View extends FAView {
  void onRequire2Fa();
  void onEmptyUserName(bool isEmpty);
  void onEmptyPassword(bool isEmpty);
  void onEmptyEndpoint(bool isEmpty);
  void onSuccessfullyLoggedIn(bool extraLogin);
}

abstract class Presenter extends FAPresemter {
  Uri getAuthorizationUrl();

  // void onHandleAuthIntent(Intent intent);

  void onTokenResponse(AccessTokenModel response);

  void onUserResponse(Login response);

  void login(String username, String password, String twoFactorCode,
      bool isBasicAuth, String endpoint);
}
