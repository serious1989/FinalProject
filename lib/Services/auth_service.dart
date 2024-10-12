class AuthService {
  Future<bool> login(String username, String password) async {
    // Simulate a network call (replace this with actual network request)
    await Future.delayed(const Duration(seconds: 2));
    
    // Dummy login logic
    if (username == 'user' && password == 'password') {
      return true;
    } else {
      return false;
    }
  }
}
