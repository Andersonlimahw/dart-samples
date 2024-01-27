import 'dart:math';
import 'Exceptions/Customs/fast_fail_validation.dart';
import 'controller/bank_controller.dart';
import 'models/account.dart';

void main() {
  try {
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

    // Sucess case
    controller.makeTransfer(
      senderId: sender.id,
      receiverId: receiver.id,
      amount: 1000,
    );
    controller.getDatabase();

    // Error case
    controller.makeTransfer(
      senderId: 'invalid_id',
      receiverId: 'invalid_receiver_id',
      amount: 0,
    );

    controller.getDatabase();
  } on FastFailValidationException catch (ex, trace) {
    print(
        'FastFailValidationException: $ex message: ${ex.message} trace $trace');
  } catch (e, s) {
    print('Exception details:\n $e');
    print('Stack trace:\n $s');
  } finally {
    print('Finally');
  }
}
