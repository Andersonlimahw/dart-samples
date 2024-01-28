import 'dart:math';
import 'helpers/exceptions/controllers/bank_controller_exceptions.dart';
import 'helpers/exceptions/generics/fast_fail_validation.dart';
import 'helpers/exceptions/generics/not_found_exceptions.dart';
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

    Account senderInvalid = Account(
      id: returnId(),
      name: "Anderson Invalid",
      balance: 20000,
      isAuthenticated: false,
    );

    var controller = BankController();

    controller.addAccount(id: receiver.id, account: receiver);
    controller.addAccount(id: sender.id, account: sender);
    controller.addAccount(id: senderInvalid.id, account: senderInvalid);

    // Sucess case
    bool response = controller.makeTransfer(
      senderId: sender.id,
      receiverId: receiver.id,
      amount: 1000,
    );
    controller.getDatabase();
    print(response);

    // bool isAuthenticatedAccountExceptionResponse = controller.makeTransfer(
    //   senderId: senderInvalid.id,
    //   receiverId: senderInvalid.id,
    //   amount: 100,
    // );
    // print(isAuthenticatedAccountExceptionResponse);
    // fastFailValidationException case
    bool fastFailValidationException = controller.makeTransfer(
      senderId: sender.id,
      receiverId: sender.id,
      amount: 99999999,
    );
    print(fastFailValidationException);

    // NotFoundCustomException case
    bool notFoundCustomException = controller.makeTransfer(
      senderId: 'invalid_id',
      receiverId: 'invalid_receiver_id',
      amount: 0,
    );
    print(notFoundCustomException);
    controller.getDatabase();
  } on FastFailValidationException catch (ex, trace) {
    print(ex);
    print(trace);
  } on NotFoundCustomException catch (ex, trace) {
    print(ex);
    print(trace);
  } on IsAuthenticatedAccountException catch (ex, trace) {
    print(ex);
    print(trace);
  } catch (ex, trace) {
    print('Exception details:\n $ex');
    print('Stack trace:\n $trace');
  } finally {
    print('Finally');
  }
}
