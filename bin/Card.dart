library Lucky9;

import 'Constants.dart';

class Card {
  var _suit;
  var _rank;

  Card(this._suit, this._rank) {
    this._suit = this._suit.toString().split(".")[1];
  }

  String get_suit() {
    return _suit;
  }

  void set_suit(Suits suit) {
    this._suit = suit;
  }

  String get_rank() {
    return _rank;
  }

  void set_rank(Ranks rank) {
    this._rank = rank;
  }

  String getName() {
    switch (int.parse(_rank)) {
      case 1:
        return "Ace of  $_suit";
      case 11:
        return "Jack of  $_suit";
      case 12:
        return "Queen of $_suit";
      case 13:
        return "King of $_suit";
      default:
        return "$_rank of $_suit";
    }
  }

  String getSymbol() {
    Symbols symbolsInstance = Symbols();
    switch (_suit.toString()) {
      case "spades":
        return symbolsInstance.symbolsMap["spades"].toString();
      case "hearts":
        return symbolsInstance.symbolsMap["hearts"].toString();
      case "diamonds":
        return symbolsInstance.symbolsMap["diamonds"].toString();
      case "clubs":
        return symbolsInstance.symbolsMap["clubs"].toString();
      default:
        return "";
    }
  }

  void displayCardInfo() {
    print("Card:" + getName());
    print("Value: $_rank.toInt()");
    print("Symbol: " + getSymbol());
  }

  void displayCardInterface() {
    print("╔══════╗");
    switch (int.parse(_rank)) {
      case 1:
        print("║ A  getSymbol())     ║");
        break;
      case 11:
        print("║ J  getSymbol())     ║");
        break;
      case 12:
        print("║ Q  getSymbol())     ║");
        break;
      case 13:
        print("║ K  getSymbol())     ║");
        break;
      case 10:
        print("║ ${_rank}  ${getSymbol().toString()} ║");
        break;
      default:
        print("║ ${_rank}  ${getSymbol().toString()} ║");
    }
    print("║      ║");
    print("║      ║");
    print("╚══════╝");
  }
}
