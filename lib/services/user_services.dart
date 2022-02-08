part of 'services.dart';

class UserServices {
  static Future<ApiReturnValue<User>> SignIn(
      String email, String password) async {
    await Future.delayed(Duration(milliseconds: 500));

    return ApiReturnValue(value: mockUser);
    // return ApiReturnValue(massage: 'Wrong email or password');
  }
}
