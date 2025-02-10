class Account{
  int _accountNumber; 
  String _ownerName; 
  double _balance; 

  int get accountNumber => _accountNumber;
  String get ownerName => _ownerName;
  double get balance => _balance;
  set balance(double value) => _balance = value;

  Account(this._accountNumber, this._ownerName, this._balance){
    print("Account created successfully.");
  }
  
}