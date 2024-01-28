import '../helpers/exceptions/controllers/bank_controller_exceptions.dart';
import '../helpers/exceptions/generics/fast_fail_validation.dart';
import '../helpers/exceptions/generics/not_found_exceptions.dart';
import '../models/account.dart';

class BankController {
  final Map<String, Account> _database = {};

  addAccount({required String id, required Account account}) {
    _database[id] = account;
  }

  bool makeTransfer({
    required String senderId,
    required String receiverId,
    required double amount,
  }) {
    // Verificar se ID de remetente é válido
    if (!verifyId(senderId)) {
      throw NotFoundCustomException(
        property: 'senderId',
        message: 'Remetente não encontrado com o id $senderId',
      );
    }

    // Verificar se ID de destinatário é válido
    if (!verifyId(receiverId)) {
      throw FastFailValidationException(
        property: 'receiverId',
        message: 'Destinatário não encontrado com o id $receiverId',
      );
    }

    Account accountSender = _database[senderId]!;
    Account accountReceiver = _database[receiverId]!;

    // Verificar se o remetente está autenticado
    if (!accountSender.isAuthenticated) {
      throw IsAuthenticatedAccountException(accountId: accountSender.id);
    }

    // Verificar se o remetente possui saldo suficiente
    if (accountSender.balance < amount) {
      throw FastFailValidationException(
        property: 'accountSender.balance',
        message:
            'Remetente não possui saldo suficiente $accountSender, valor: $amount',
      );
    }

    // Se tudo estiver certo, efetivar transação
    accountSender.balance -= amount;
    accountReceiver.balance += amount;

    return true;
  }

  bool verifyId(String id) {
    return _database.containsKey(id);
  }

  Map<String, Account> getDatabase() {
    print('_database => $_database');
    return _database;
  }
}
