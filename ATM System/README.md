# 🏦 ATM System - Flutter & Dart

A simple ATM system implemented in **Dart**, following **OOP principles** with transactions like **Deposit, Withdraw, Balance Inquiry, and Rollback**.

## 📜 UML Diagram
[📄 View UML Diagram](https://github.com/user-attachments/files/18737083/lab.-.uml.pdf)

## 🚀 Features
✅ **Create an Account**  
✅ **Deposit Money**  
✅ **Withdraw Money**

✅ **Check Balance** (Supports USD & EUR)  
✅ **Cancel Last Transaction**  

## 🛠️ Technologies Used
- **Dart**
- **OOP Principles**
- **Git & GitHub**

## 📌 System Overview

The ATM system follows a **transaction-based model** where every operation (Deposit, Withdraw, Balance Inquiry) follows an `execute()` method. The system also implements **rollback functionality** to undo the last transaction.

### 🏗️ **Class Diagram**
- `Account`: Holds user data and balance.
- `Transaction (Abstract)`: Defines the common `execute()` method.
- `Deposit`: Adds balance.
- `Withdraw`: Deducts balance.
- `BalanceInquiry`: Checks the balance in different currencies.
- `Rollback (Interface)`: Provides a `cancelTransaction()` method.

## 📥 Installation & Usage
1. Clone the repository:
   ```sh
   git clone https://github.com/WaelLasheen/DEPI.git
