import 'Account.dart';
import 'TransactionWithRollback.dart';

class Deposit extends TransactionWithRollback{
  double amount;
  Deposit(super.transactionId,this.amount);

  @override
  double execute(Account account) {
    //0: failed, 1: success
    account.balance = account.balance + amount;
    print('Deposit successful. New balance: ${account.balance}');

    return 1;
  }
  
  @override
  double cancelTransaction(Account) {
    Account.balance = Account.balance - amount;
    print('Deposit canceled. New balance: ${Account.balance}');

    return 1;
  }
}