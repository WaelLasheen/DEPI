import 'Transaction.dart';

class BalanceInquiry extends Transaction{
  String currencyType;
  Map<String, double> balance={"U":1/51.89 ,"E":1/50.3};   // data will be get from API or and real source

  BalanceInquiry(super.transactionId,this.currencyType);

  @override
  double execute(Account){
    // my account balance is in L.E and I want to know what is my balance in USD | EUR
    return Account.balance * balance[currencyType]!;
  }
}