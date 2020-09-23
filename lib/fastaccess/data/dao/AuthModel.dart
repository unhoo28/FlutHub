class AuthModel {
  String _clientId;
  String _clientSecret;
  String _redirectUri;
  List<String> _scropes;
  String _state;
  String _note;
  String _noteUrl;
  String _otpCode;

  set clientId(String id) => _clientId = id;
  String get clientId => clientId;
  set clientSecret(String secret) => _clientSecret = secret;
  String get clientSecret => _clientSecret;
  set redirectUri(String uri) => _redirectUri = uri;
  String get redirectUri => _redirectUri;
  set scropes(List<String> scropes) => _scropes = scropes;
  List<String> get scropes => _scropes;
  set state(String state) => _state = state;
  String get state => _state;
  set note(String note) => _note = note;
  String get note => _note;
  set noteUrl(String noteUrl) => _noteUrl = noteUrl;
  String get noteUrl => _noteUrl;
  set otpCode(String otpCode) => _otpCode = otpCode;
  String get otpCode => _otpCode;
}
