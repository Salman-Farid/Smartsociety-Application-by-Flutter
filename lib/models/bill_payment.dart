class BillPayment {
  final String id;
  final String title;
  final double amount;
  final DateTime dueDate;
  final bool isPaid;

  BillPayment({
    required this.id,
    required this.title,
    required this.amount,
    required this.dueDate,
    required this.isPaid,
  });
}
