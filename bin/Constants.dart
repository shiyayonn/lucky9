
library Lucky9;

import 'dart:core';

enum Suits {
  clubs,
  spades,
  diamonds,
  hearts,
}

class Ranks {

  final Map<String,String> rankMaps =  {
    "ace":"1",
     "two" : "2",
     "three" : "3",
     "four" : "4",
     "five" : "5",
     "six" : "6",
     "seven" : "7",
     "eight" : "8",
     "nine" : "9",
     "ten" : "10",
     "jack" : "11",
     "queen" : "12",
     "king" : "13",

  };

}

class Symbols {
  final Map<String,String> symbolsMap = {
   "clubs" : "♣",
   "spades" : "♠",
   "diamonds" : "♦",
   "hearts" : "♥",
};
  //Club("♣"), Spade("♠"), Diamond("♦"), Hearts("♥");
}
