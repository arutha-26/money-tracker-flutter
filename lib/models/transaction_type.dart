enum TransactionType { income, expense }

extension TransactionTypeX on TransactionType {
  String get value {
    switch (this) {
      case TransactionType.income:
        return 'income';
      case TransactionType.expense:
        return 'expense';
    }
  }

  static TransactionType fromString(String value) {
    return TransactionType.values.firstWhere((e) => e.value == value);
  }
}
