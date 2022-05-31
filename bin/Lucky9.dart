library Lucky9;

import 'CardGame.dart';
import 'Player.dart';
import 'Card.dart';
class Lucky9 extends CardGame {

	 int getValue(Set cards) {
		int value = 0;
		for (Card card in cards) {
			value += int.parse(card.get_rank());
		}
		while (value > 9) {
			value -= 10;
		}

		return value;
	}

	 Set<Player> getWinners() {

		Set<Player> winners = new Set<Player>();
		int highest = 0;
		for (Player player in getPlayers()) {
			int temp = getValue(player.getCards());
			if (temp > highest) {
				highest = temp;
			}
		}
		for (Player player in getPlayers()) {
			int temp = getValue(player.getCards());
			if (temp == highest) {
				winners.add(player);
			}
		}

		return winners;
	}
}
