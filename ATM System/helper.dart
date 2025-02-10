import 'dart:io';
import 'Account.dart';
import 'BalanceInquiry.dart';
import 'Deposit.dart';
import 'TransactionWithRollback.dart';
import 'Withdraw.dart';

// there are all methods that I use in main

void menu(){
  print("Menu:\n");
  print("1. Enter account details");
  print("2. Deposit");
  print("3. Withdraw");
  print("4. Show current balance");
  print("5. Cancel last transaction");
  print("6. Exit");
}

Account createAccount(){
  stdout.write("Enter account number: ");
  int accNum = int.parse(stdin.readLineSync()!);
  stdout.write("Enter owner name: ");
  String ownerName = stdin.readLineSync()!;
  stdout.write("Enter initial balance: ");
  double balance = double.parse(stdin.readLineSync()!);
  return Account(accNum, ownerName, balance);
}


void createDeposit(List<TransactionWithRollback> allTransaction ,int transId , Account? account){
  stdout.write("Enter deposit amount: ");
  double amount = double.parse(stdin.readLineSync()!);
  TransactionWithRollback deposit = Deposit(transId, amount);
  allTransaction.add(deposit);
  deposit.execute(account!);
}

void createWithdraw(List<TransactionWithRollback> allTransaction ,int transId , Account? account){
  stdout.write("Enter withdrawal amount: ");
  double amount = double.parse(stdin.readLineSync()!);
  TransactionWithRollback withdraw = Withdraw(transId, amount);
  allTransaction.add(withdraw);
  withdraw.execute(account!);
}

void createBalanceInquiry(int transId , Account? account){
  stdout.write("Enter currency type (U for USD, E for EUR): ");
  String currType = stdin.readLineSync()!.toUpperCase();
  BalanceInquiry inquiry = BalanceInquiry(transId, currType);
  double currBalance = inquiry.execute(account!);
  print("Current balance: $currBalance");
}

void cancel(List<TransactionWithRollback> allTransaction , Account Account){
  if(allTransaction.isEmpty) {
    print("No transaction to cancel.");
    return;
  }

  allTransaction.last.cancelTransaction(Account);
  allTransaction.removeLast();
}