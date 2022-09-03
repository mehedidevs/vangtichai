import 'package:flutter/cupertino.dart';

class Logics extends ChangeNotifier {
  var amount = "";
  var total500 = 0;
  var total100 = 0;
  var total50 = 0;
  var total20 = 0;
  var total10 = 0;
  var total5 = 0;
  var total2 = 0;
  var total1 = 0;
  double moneyLeft = 0;

  getAmount() {
    return amount;
    notifyListeners();
  }

  setAmount(var amount) {
    this.amount = this.amount + amount;

    notifyListeners();

    calculateNotes(this.amount);
  }

  clearAllData() {
    amount = "";

    total500 = 0;
    total100 = 0;
    total50 = 0;
    total20 = 0;
    total10 = 0;
    total5 = 0;
    total2 = 0;
    total1 = 0;
    notifyListeners();
  }

  void calculateNotes(var amount) {
    moneyLeft = double.parse(amount);

    total500 = moneyLeft ~/ 500;
    moneyLeft = (moneyLeft - total500 * 500);
    total100 = moneyLeft ~/ 100;
    moneyLeft = (moneyLeft - total100 * 100);
    total50 = moneyLeft ~/ 50;
    moneyLeft = (moneyLeft - total50 * 50);
    total20 = moneyLeft ~/ 20;
    moneyLeft = (moneyLeft - total20 * 20);
    total10 = moneyLeft ~/ 10;
    moneyLeft = (moneyLeft - total10 * 10);
    total5 = moneyLeft ~/ 5;
    moneyLeft = (moneyLeft - total5 * 5);
    total2 = moneyLeft ~/ 2;
    moneyLeft = (moneyLeft - total2 * 2);
    total1 = moneyLeft ~/ 1;
    moneyLeft = (moneyLeft - total1 * 1);

    print("Last Money Left" + moneyLeft.toString());
  }
}
