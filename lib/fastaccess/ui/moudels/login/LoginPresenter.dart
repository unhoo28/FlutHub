import 'dart:io';

import 'package:fasthub/fastaccess/data/dao/AccessTokenModel.dart';
import 'package:fasthub/fastaccess/data/dao/AuthModel.dart';
import 'package:fasthub/fastaccess/data/dao/model/Login.dart';
import 'package:fasthub/fastaccess/helper/GithubConfigHelper.dart';
import 'package:fasthub/fastaccess/helper/InputHelper.dart';
import 'package:fasthub/fastaccess/provider/rest/RestProvider.dart';
import 'package:fasthub/fastaccess/ui/base/mvp/presenter/BasePresenter.dart';
import 'package:fasthub/fastaccess/ui/moudels/login/LoginView.dart';
import 'package:fasthub/fastaccess/ui/moudels/login/LoginMvp.dart';

class LoginPresenter extends BasePresenter<LoginViewState>
    implements Presenter {
  LoginPresenter() {
    RestProvider.clearDio();
  }

  void login(String username, String password, String twoFactorCode,
      bool isBasicAuth, String endpoint) {
    bool usernameIsEmpty = InputHelper.isEmpty(username);
    bool passwordIsEmpty = InputHelper.isEmpty(password);
    bool endpointIsEmpty = InputHelper.isEmpty(endpoint) && isEnterprise();
    if (getView() == null) return;
    getView().onEmptyUserName(usernameIsEmpty);
    getView().onEmptyPassword(passwordIsEmpty);
    getView().onEmptyEndpoint(endpointIsEmpty);
    if (!usernameIsEmpty && !passwordIsEmpty) {
      String authToken = "";
      if (isBasicAuth && !isEnterprise()) {
        AuthModel authModel = AuthModel();
        authModel.scropes =
            List.from({"user", "repo", "gist", "notifications", "read:org"});
        authModel.note = "com.github.unhoo28.fasthub";
        authModel.clientSecret = GithubConfigHelper.GITHUB_SECRET;
        authModel.clientId = GithubConfigHelper.GITHUB_CLIENT_ID;
        authModel.noteUrl = GithubConfigHelper.REDIRECT_URL;
        if (!InputHelper.isEmpty(twoFactorCode)) {
          authModel.otpCode = twoFactorCode;
        }

        //rest call
      } else {
        _accessTokenLogin(password, endpoint, twoFactorCode, authToken);
      }
    }
  }

  _accessTokenLogin(
      String password, String endpoint, String otp, String authToken) {
    //rest call
  }

  @override
  Uri getAuthorizationUrl() {
    return Uri(
      scheme: "https",
      host: "github.com",
      pathSegments: {"login", "oauth", "authorize"},
      queryParameters: {
        "client_id": GithubConfigHelper.getClientId(),
        "redirect_url": GithubConfigHelper.getRedirectUrl(),
        "scope": "user,repo,gist,notifications,read:org",
        "state": "com.github.unhoo28.fasthub",
      },
    );
  }

  @override
  void onTokenResponse(AccessTokenModel response) {
    // TODO: implement onTokenResponse
  }

  @override
  void onUserResponse(Login response) {
    // TODO: implement onUserResponse
  }
}
