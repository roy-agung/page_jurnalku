class SessionManager {
  static String? _nis;
  static Map<String, dynamic>? _user;

  static String? get nis => _nis;
  static Map<String, dynamic>? get user => _user;
  static bool get isLoggedIn => _nis != null && _nis!.isNotEmpty;

  static void setUser(Map<String, dynamic> userData) {
    _nis = userData['nis']?.toString();
    _user = userData;
  }

  static void clear() {
    _nis = null;
    _user = null;
  }
}


