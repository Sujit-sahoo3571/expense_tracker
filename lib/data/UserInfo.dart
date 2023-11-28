enum TransactionType { inflow, outflow }

enum ItemCategoryType { fashion, grocery, payments }

class UserInfo {
  final String name;
  final String totalBalance;
  final String inflow;
  final String outflow;
  // final List<Transaction> transactionList;

  const UserInfo({
    required this.name,
    required this.totalBalance,
    required this.inflow,
    required this.outflow,
    // required this.transactionList
  });
}

class Transaction {
  final ItemCategoryType itemCategoryType;
  final TransactionType transactionType;
  final String itemCategoryName;
  final String itemName;
  final String amount;
  final String date;

  const Transaction(
      {required this.itemCategoryType, // fashion , grocery, payments
      required this.transactionType, // inflow , outflow
      required this.itemCategoryName,
      required this.itemName,
      required this.amount,
      required this.date});
}

// user dummy tranasction
final List<Transaction> transactionLists1 = [
  Transaction(
      itemCategoryType: ItemCategoryType.fashion,
      transactionType: TransactionType.outflow,
      itemCategoryName: "Shoes",
      itemName: "Puma sneaker",
      amount: "\$3,000",
      date: "24-Oct-23"),
  Transaction(
      itemCategoryType: ItemCategoryType.grocery,
      transactionType: TransactionType.outflow,
      itemCategoryName: "Rice",
      itemName: "Basmati  Rice",
      amount: "\$250",
      date: "27-Oct-23"),
  Transaction(
      itemCategoryType: ItemCategoryType.payments,
      transactionType: TransactionType.inflow,
      itemCategoryName: "Stocks",
      itemName: "TCS Ninja",
      amount: "\$5,000",
      date: "24-Oct-23"),
];
final List<Transaction> transactionLists2 = [
  Transaction(
      itemCategoryType: ItemCategoryType.fashion,
      transactionType: TransactionType.outflow,
      itemCategoryName: "Shoes",
      itemName: "Puma sneaker",
      amount: "\$3,000",
      date: "24-Oct-23"),
  Transaction(
      itemCategoryType: ItemCategoryType.fashion,
      transactionType: TransactionType.outflow,
      itemCategoryName: "T-Shirt",
      itemName: "Gucci",
      amount: "\$2500",
      date: "27-Oct-23"),
  Transaction(
      itemCategoryType: ItemCategoryType.payments,
      transactionType: TransactionType.inflow,
      itemCategoryName: "Transport",
      itemName: "Shipping Bags",
      amount: "\$15,000",
      date: "26-Oct-23"),
];
// user dummy data
const UserInfo userdata = UserInfo(
  name: "Jacob",
  totalBalance: "45,00,000",
  inflow: "Income",
  outflow: "Expenses",
  // transactionList: _transactionLists1
);
