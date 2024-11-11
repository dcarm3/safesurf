import 'dart:math';

class MockBackendService {
  final _random = Random();

  Map<String, dynamic> getActivityData() {
    final activities = [
      {"activity": "login", "suspicious": false},
      {"activity": "download", "suspicious": false},
      {"activity": "access_unknown_url", "suspicious": true},
      {"activity": "file_upload", "suspicious": false},
      {"activity": "access_restricted_area", "suspicious": true},
    ];

    return activities[_random.nextInt(activities.length)];
  }
}
