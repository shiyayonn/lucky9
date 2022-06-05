library Lucky9;

import 'dart:core';

enum Suits {
  clubs,
  spades,
  diamonds,
  hearts,
}

extension GetSuitValue on Suits {
  String get getSuit {
    switch (this) {
      case Suits.clubs:
        return '♣';
      case Suits.spades:
        return '♠';
      case Suits.diamonds:
        return '♦';
      case Suits.hearts:
        return '♥';
      default:
        return 'Invalid Suits';
    }
  }
}

enum Ranks {
  ace,
  two,
  three,
  four,
  five,
  six,
  seven,
  eight,
  nine,
  ten,
  jack,
  queen,
  king
}

extension getRankValue on Ranks {
  int get getRank {
    switch (this) {
      case Ranks.ace:
        return 1;
      case Ranks.two:
        return 2;
      case Ranks.three:
        return 3;
      case Ranks.four:
        return 4;
      case Ranks.five:
        return 5;
      case Ranks.six:
        return 6;
      case Ranks.seven:
        return 7;
      case Ranks.eight:
        return 8;
      case Ranks.nine:
        return 9;
      case Ranks.ten:
        return 10;
      case Ranks.jack:
        return 11;
      case Ranks.queen:
        return 12;
      case Ranks.king:
        return 13;

      default:
        return 0;
    }
  }
}
