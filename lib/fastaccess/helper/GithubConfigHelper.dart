class GithubConfigHelper {
  static const String REDIRECT_URL = "fasthub://login";
  static const String GITHUB_CLIENT_ID = "473e333123519beadd63";
  static const String GITHUB_SECRET =
      "b2d158f949d3615078eaf570ff99eba81cfa1ff9";

  static String getRedirectUrl() {
    return REDIRECT_URL;
  }

  static String getClientId() {
    return GITHUB_CLIENT_ID;
  }

  static String getSecret() {
    return GITHUB_SECRET;
  }
}
