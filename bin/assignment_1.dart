import 'package:assignment_1/assignment_1.dart' as assignment_1;
import 'lucky9.dart';
import 'player.dart';
import 'card.dart';

Future<void> main(List<String> arguments) async {
  // Create atleast 4 players
  Lucky9 game = Lucky9();
  game.addPlayer(Player("Jayson Concepcion"));
  game.addPlayer(Player("Raphael Chua"));
  game.addPlayer(Player("Kevin Ablon"));
  game.addPlayer(Player("Jonathan Go"));

  // Initialize game cards
  game.addAllCards();

  game.removeInvalidCards();

  // Shuffle the deck
  game.shuffleDeck();

  // Give each player two cards
  for (Player player in game.getPlayers()) {

    player.drawCard(game.stackOfCards);
    player.drawCard(game.stackOfCards);
  }

  // If player's current card value is less than 6, give that player another card
  for (Player player in game.getPlayers()) {
    if (game.getValue(player.getCards()) < 6) {
      player.drawCard(game.stackOfCards);
    }
  }

  void showWinners() {
    // Show the winner
    print("--------------------------------------------");
    print("\nWinner/s: ");
    for (Player player in game.getWinners()) {
      print("${player.getName()}  : ${game.getValue(player.getCards())}");
    }
  }

  Future<void> showCards(Set cards) async {
    for (Card c in cards) {
      await Future.delayed(Duration(seconds: 1));
      c.displayCardInterface();
    }
  }

  Future<void> showPlayers() async {
    // Show summary of each player's card containing an array of their cards in Q♥
    // format
    print("--------------------------------------------");
    for (Player player in game.getPlayers()) {
      print("${player.getName()} : ${game.getValue(player.getCards())}");
      await Future.delayed(Duration(seconds: 2));
      await showCards(player.getCards());
    }
  }

  await showPlayers();
  showWinners();
}
