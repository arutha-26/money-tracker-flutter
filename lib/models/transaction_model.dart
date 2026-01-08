import 'transaction_type.dart';

class TransactionModel {
  final String id;
  final String userId;
  final double amount;
  final TransactionType type;
  final String categoryId;
  final String? photoUrl;
  final DateTime createdAt;

  TransactionModel({
    required this.id,
    required this.userId,
    required this.amount,
    required this.type,
    required this.categoryId,
    this.photoUrl,
    required this.createdAt,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      id: json['id'],
      userId: json['user_id'],
      amount: (json['amount'] as num).toDouble(),
      type: TransactionTypeX.fromString(json['type']),
      categoryId: json['category_id'],
      photoUrl: json['photo_url'],
      createdAt: DateTime.parse(json['created_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'amount': amount,
      'type': type.value,
      'category_id': categoryId,
      'photo_url': photoUrl,
    };
  }
}
