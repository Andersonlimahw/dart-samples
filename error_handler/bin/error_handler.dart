import 'dart:math';
import 'controller/bank_controller.dart';
import 'models/account.dart';

void main() {
  String returnId() {
    Random randomId = Random(100);
    return '${randomId.hashCode}';
  }

  Account receiver = Account(
    id: returnId(),
    name: "Lemon",
    balance: 10000,
    isAuthenticated: true,
  );

  Account sender = Account(
    id: returnId(),
    name: "Anderson",
    balance: 20000,
    isAuthenticated: true,
  );

  var controller = BankController();

  controller.addAccount(id: receiver.id, account: receiver);
  controller.addAccount(id: sender.id, account: sender);

  controller.makeTransfer(
    senderId: sender.id,
    receiverId: receiver.id,
    amount: 1000,
  );
}
