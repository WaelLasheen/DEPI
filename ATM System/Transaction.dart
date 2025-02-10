import 'Account.dart';

abstract class Transaction{
  int transactionId;
  
  Transaction(this.transactionId);

  double execute(Account account);
}