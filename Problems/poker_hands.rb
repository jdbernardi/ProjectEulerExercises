=begin
Poker hands
Problem 54
In the card game poker, a hand consists of five cards and are ranked, from lowest to highest, in the following way:

High Card: Highest value card.
One Pair: Two cards of the same value.
Two Pairs: Two different pairs.
Three of a Kind: Three cards of the same value.
Straight: All cards are consecutive values.
Flush: All cards of the same suit.
Full House: Three of a kind and a pair.
Four of a Kind: Four cards of the same value.
Straight Flush: All cards are consecutive values of same suit.
Royal Flush: Ten, Jack, Queen, King, Ace, in same suit.
The cards are valued in the order:
2, 3, 4, 5, 6, 7, 8, 9, 10, Jack, Queen, King, Ace.

If two players have the same ranked hands then the rank made up of the highest value wins; for example, a pair of eights beats a pair of fives (see example 1 below). But if two ranks tie, for example, both players have a pair of queens, then highest cards in each hand are compared (see example 4 below); if the highest cards tie then the next highest cards are compared, and so on.

How many hands does Player 1 win?

=end

# PROGRAM poker_hands(player_one_hand, player_2_hand)
def poker_hands(player_one_hand, player_2_hand)
# each suit and number is ranked
# 2HCDS - A HCDS
player_1 = player_one_hand.split(' ')
player_2 = player_one_hand.split(' ')

print player_1
print player_2

cards = { 
  :H2 => 'H2',
  :D2 => 'D2',
  :C2 => 'C2',
  :S2 => 'S2',
  :H3 => 'H3',
  :D3 => 'D3',
  :C3 => 'C3',
  :S3 => 'S3',
  :H4 => 'H4',
  :D4 => 'D4',
  :C4 => 'C4',
  :S4 => 'S4',

   }


# the hand of each player needs to be placed into an array
# then each hand must be evaluted indepently
  # for each card the possible hands must be evaluated
  # High card
  # One pair
  # Two pairs
  # Three of a kind
  # Straight
  # Flush
  # Full House
  # Four of a Kind
  # Straight Flush
  # Royal Flush
# Once both hands are evaluated the top evaulations are compared
# consider assiging a number value to the winning hand
# then compare that for the winner

end

poker_hands('8C TS KC 9H 4S', '7D 2S 5D 3S AC')
