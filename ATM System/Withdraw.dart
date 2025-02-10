import 'Account.dart';
import 'TransactionWithRollback.dart';

class Withdraw extends TransactionWithRollback{
  double amount;
  Withdraw(super.transactionId,this.amount);

  @override
  double execute(Account account) {
    //0: failed, 1: success
    if(account.balance < amount){
      print('Insufficient balance');
      return 0;
    }

    account.balance = account.balance - amount;
    print('Withdrawal successful. New balance: ${account.balance}');

    return 1;
  }
  
  @override
  double cancelTransaction(Account) {
    Account.balance = Account.balance + amount;
    print('Withdrawal canceled. New balance: ${Account.balance}');

    return 1;
  }
}