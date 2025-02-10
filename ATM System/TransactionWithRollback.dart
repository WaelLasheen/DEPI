import 'Rollback.dart';
import 'Transaction.dart';

// I create this class to be a layer between Transaction and Deposit/Withdraw as a try to achieve SOLID

abstract class TransactionWithRollback extends Transaction implements Rollback{
  TransactionWithRollback(super.transactionId);

  double cancelTransaction(Account);
}