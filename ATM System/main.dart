import 'dart:io';
import 'Account.dart';
import 'TransactionWithRollback.dart';
import 'helper.dart';

// before start, Please read helper file

void main() {
  Account? account;
  int transId = 0;
  List<TransactionWithRollback> allTransaction = []; // transaction history

  while (true) {
    menu();
    stdout.write("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        account = createAccount();
        break;

      case 2:
        if (account == null) {
          print("Please create an account first.");
          break;
        }

        createDeposit(allTransaction, ++transId, account);
        break;

      case 3:
        if (account == null) {
          print("Create an account first!");
          break;
        }
        createWithdraw(allTransaction, ++transId, account);
        break;

      case 4:
        if (account == null) {
          print("Create an account first!");
          break;
        }

        createBalanceInquiry(++transId, account);
        break;

      case 5:
        if (account == null) {
          print("Create an account first!");
          break;
        }

        cancel(allTransaction, account);
        break;

      case 6:
        exit(0);
    }
  }
}
