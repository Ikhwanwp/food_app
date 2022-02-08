part of 'models.dart';

// ignore: constant_identifier_names
enum TransactionStatus { delivered, on_delivery, pending, cancelled }

class Transactions extends Equatable {
  final int? id;
  final Food? food;
  final int? quantity;
  final int? total;
  final DateTime? dateTime;
  final TransactionStatus? status;
  final User? user;

  const Transactions(
      {this.id,
      this.food,
      this.quantity,
      this.total,
      this.dateTime,
      this.status,
      this.user});

  // Method CopyWith -> u/ mengcopy data transaction, karena transaction tipenya equatable dan sudah final semua dan tidak bisa di edit
  // Oleh karena itu diperlukan sebuah method untuk mengcopy untuk memasukkan nilai yang baru
  Transactions copyWith(
      {int? id,
      Food? food,
      int? quantity,
      int? total,
      DateTime? dateTime,
      TransactionStatus? status,
      User? user}) {
    return Transactions(
        // sesuai dengan parameter
        id: id ?? this.id,
        food: food ?? this.food,
        quantity: quantity ?? this.quantity,
        total: total ?? this.total,
        dateTime: dateTime ?? this.dateTime,
        status: status ?? this.status,
        user: user ?? this.user);
  }

  @override
  List<Object?> get props =>
      [id, food, quantity, total, dateTime, status, user];
}

List<Transactions> mockTransaction = [
  Transactions(
    id: 1,
    food: mockFoods[1],
    quantity: 10,
    total: (mockFoods[1].price! * 10 * 1.1).round() + 50000,
    dateTime: DateTime.now(),
    status: TransactionStatus.delivered,
    user: mockUser,
  ),
  Transactions(
    id: 2,
    food: mockFoods[2],
    quantity: 7,
    total: (mockFoods[2].price! * 7 * 1.1).round() + 50000,
    dateTime: DateTime.now(),
    status: TransactionStatus.cancelled,
    user: mockUser,
  ),
  Transactions(
    id: 3,
    food: mockFoods[3],
    quantity: 6,
    total: (mockFoods[3].price! * 6 * 1.1).round() + 50000,
    dateTime: DateTime.now(),
    status: TransactionStatus.on_delivery,
    user: mockUser,
  ),
];
