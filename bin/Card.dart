library Lucky9;

import 'constants.dart';

class Card {
  var _suit;
  int _rank;

  Card(this._suit, this._rank);

  String get_suit() {
    return _suit;
  }

  void set_suit(String suit) {
    this._suit = suit;
  }

  int get_rank() {
    return _rank;
  }

  void set_rank(int rank) {
    this._rank = rank;
  }

  String getName() {
    switch ((_rank)) {
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
    return _suit;
    
  }

  void displayCardInfo() {
    print("Card:" + getName());
    print("Value: $_rank");
    print("Symbol: " + getSymbol());
  }

  void displayCardInterface() {
    print("╔══════╗");
    switch ((_rank)) {
      case 1:
        print("║ A  ${getSymbol()}    ║");
        break;
      case 11:
        print("║ J  ${getSymbol()}     ║");
        break;
      case 12:
        print("║ Q  ${getSymbol()}     ║");
        break;
      case 13:
        print("║ K  ${getSymbol()}     ║");
        break;
      case 10:
        print("║ ${_rank}  ${getSymbol()} ║");
        break;
      default:
        print("║ ${_rank}  ${getSymbol()} ║");
    }
    print("║      ║");
    print("║      ║");
    print("╚══════╝");
  }
}
