class User {
  var id;
  String login;
  String avatarUrl;
  String gravatarId;
  String url;
  String htmlUrl;
  String followersUrl;
  String followingUrl;
  String gistsUrl;
  String starredUrl;
  String subscriptionsUrl;
  String organizationsUrl;
  String reposUrl;
  String eventsUrl;
  String receivedEventsUrl;
  String type;
  bool siteAdmin;
  String name;
  String company;
  String blog;
  String location;
  bool email;
  bool hireable;
  String bio;
  var publicRepos;
  var publicGists;
  var followers;
  var following;
  DateTime createdAt;
  DateTime updatedAt;
  int contributions;
  String followingName;
  String followerName;
  DateTime date;
  String repoId;
  String description;
  bool hasOrganizationProjects;

  void save(User entity) {}

  static User getUser([String login, var id]) {
    return null;
  }
}
