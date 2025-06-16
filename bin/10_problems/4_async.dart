import 'dart:async';

class UserProfile {
  final String name;
  final int age;

  UserProfile(this.name, this.age);
}

class UserPosts {
  final List<String> posts;

  UserPosts(this.posts);
}

class UserSettings {
  final bool darkMode;

  UserSettings(this.darkMode);
}

class User {
  final UserProfile profile;
  final UserPosts posts;
  final UserSettings settings;

  User(this.profile, this.posts, this.settings);

  @override
  String toString() {
    return 'User(name: ${profile.name}, age: ${profile.age}, posts: ${posts.posts}, darkMode: ${settings.darkMode})';
  }
}

Future<UserProfile> getUserProfile() async {
  await Future.delayed(Duration(seconds: 10));
  return UserProfile("Shivansh", 19);
}

Future<UserSettings> getUserSettings() async {
  await Future.delayed(Duration(seconds: 2));
  return UserSettings(true);
}

Future<UserPosts> getUserPosts() async {
  await Future.delayed(Duration(seconds: 3));
  return UserPosts(["Post 1", "Post 2"]);
}

Future<User> fetchCompleteUserData() async {
  final futures =
      await Future.wait([getUserProfile(), getUserPosts(), getUserSettings()]);
  return User(
    futures[0] as UserProfile,
    futures[1] as UserPosts,
    futures[2] as UserSettings,
  );
}

void main() async {
  User user = await fetchCompleteUserData();
  print(user);
}
