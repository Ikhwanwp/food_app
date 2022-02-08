part of 'models.dart';

class User extends Equatable {
  final int? id;
  final String? name;
  final String? email;
  final String? address;
  final String? houseNumber;
  final String? phoneNumber;
  final String? city;
  final String? picturePath;

  const User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.picturePath});

  @override
  List<Object?> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

const User mockUser = User(
    id: 1,
    name: 'ikhwan',
    city: 'Bogor',
    address: 'Citra Indah City',
    houseNumber: 'At 21 No 26',
    phoneNumber: '0821121213',
    email: 'ikhwanwp99@gmail.com',
    picturePath: 'assets/user.jpg');
