library Lucky9;

import 'package:stack/stack.dart';

import "Card.dart";

class Player {
  String _name = "";
  Set _cards = new Set();

  Player(this._name);

  String get_name() {
    return _name;
  }

  void set_name(newName) {
    this._name = newName;
  }

  void drawCard(List _deck) {
    _cards.add(_deck.last);
    _deck.removeLast();
  }

  List<String> currentCards() {
    String cards = "";
    for (Card c in _cards) {
      cards += "$c.get_rank() $c.getSymbol() ";
    }
    return cards.split(" ");
  }

  void releaseCard(int index) {
    // System.out.println("Removed " + _cards[index - 1].getName() + " from hand
    // \n");
    _cards.remove(index - 1);
  }

  void displayCardInterfaces() {
    for (Card c in _cards) {
      c.displayCardInterface();
    }
  }

  void displayCardInfo(int index) {
    // _cards.get(index - 1).displayCardInfo();
  }

  Set getCards() {
    return _cards;
  }
}
