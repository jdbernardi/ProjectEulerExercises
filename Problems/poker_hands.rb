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
def poker_hands(player_1_hand, player_2_hand)
# each suit and number is ranked
# 2HCDS - A HCDS

# the hand of each player needs to be placed into an array
player_1 = player_1_hand.split(" ")
player_2 = player_2_hand.split(" ")

player_1_top_hand = 1
player_2_top_hand = 1

print player_1
puts ""
puts ""
print player_2
puts ""

cards_suits = [
  "2H", "2D", "2C", "2S",
  "3H", "3D", "3C", "3S",
  "4H", "4D", "4C", "4S",
  "5H", "5D", "5C", "5S",
  "6H", "6D", "6C", "6S",
  "7H", "7D", "7C", "7S",
  "8H", "8D", "8C", "8S",
  "9H", "9D", "9C", "9S",
  "TH", "TD", "TC", "TS",
  "JH", "JD", "JC", "JS",
  "QH", "QD", "QC", "QS",
  "KH", "KD", "KC", "KS",
  "AH", "AD", "AC", "AS"
]

cards_rank = {
  "2H" => 2, "2D" => 2, "2C" => 2, "2S" => 2,
  "3H" => 3, "3D" => 3, "3C" => 3, "3S" => 3,
  "4H" => 4, "4D" => 4, "4C" => 4, "4S" => 4,
  "5H" => 5, "5D" => 5, "5C" => 5, "5S" => 5,
  "6H" => 6, "6D" => 6, "6C" => 6, "6S" => 6,
  "7H" => 7, "7D" => 7, "7C" => 7, "7S" => 7,
  "8H" => 8, "8D" => 8, "8C" => 8, "8S" => 8,
  "9H" => 9, "9D" => 9, "9C" => 9, "9S" => 9,
  "TH" => 10,"TD" => 10,"TC" => 10,"TS" => 10,
  "JH" => 11,"JD" => 11,"JC" => 11,"JS" => 11,
  "QH" => 12,"QD" => 12,"QC" => 12,"QS" => 12,
  "KH" => 13,"KD" => 13,"KC" => 13,"KS" => 13,
  "AH" => 14,"AD" => 14,"AC" => 14,"AS" => 14
}

player1_rank = []
player2_rank = []

  puts ""
# then each hand must be evaluted indepently

  # for each card the possible hands must be evaluated
  # High card
  player_1.each { |x|
  cards_rank.each { |k, v|
    if x == k
      player1_rank << v
    end
    }
  }

  player_2.each { |x|
  cards_rank.each { |k, v|
    if x == k
      player2_rank << v
    end
    }
  }

  if player1_rank.max > player2_rank.max
    puts "Player one has the high card of #{player1_rank.max}"
  else
    puts "Player two has the high card of #{player2_rank.max}"
  end

##### One pair
  pair_1 = player1_rank.inject(Hash.new(0)) { |total, e| total[e] += 1; total}
  pair_2 = player2_rank.inject(Hash.new(0)) { |total, e| total[e] += 1; total}

  print pair_1

  if pair?(pair_1) == true
    puts "pair for P1"
  end

  if pair?(pair_2) == true
    puts "pair for P2"
  end

##### Two pairs

  if two_pair?(pair_1) == true
    print "Two pair for P1"
  end

  if two_pair?(pair_2) == true
    print "Two pair for P2"
  end

##### Three of a kind
  if three_of_a_kind?(pair_1) == true
    print "3 of a kind for player 1"
  end

  if three_of_a_kind?(pair_2) == true
    print "3 of a kind for player 2"
  end
##### Straight 
  # for the straight to be there the rank of the cards must be in order
  # starting with the rank, it must be sorted
  if straight?(player2_rank) == true
    puts "Straight!"
  else 
    puts "Nada Straight"
  end
  # if the second element is one more than the first
  # then increment to the next element
  # otherwise function and straight is false


###### Straight Flush
    # each card needs to have a suit and number associated with it
    # the first check is if its a straight calling the function
    # if the function is true
  if straight?(player2_rank) == true
    # the player's hand needs to be evaluated to see if each card has the same SUIT
    # call the flush method to see if there are 5 of any suit
    if flush?(player_2) == true
      print "Player 2 has a Straigh Flush!"
    end
    # looking at the player's hand there needs to be five of the H S D or C
    # count the number of each letter
  end
###### Flush

  if flush?(player_2) == true
    print "Player 2 has a Flush"
  end

    if flush?(player_1) == true
    print "Player 1 has a Flush"
  end

###### Full House
  if pair_1.has_value?(3) && pair_1.has_value?(2)
    puts "Player one has a Full House"
  end

  if pair_2.has_value?(3) && pair_2.has_value?(2)
    puts "Player two has a Full House"
  end

###### Four of a Kind
  if four_of_a_kind?(pair_1) == true
    puts "Four of a Kind"
  else 
    puts "No four of a kind"
  end

##### Royal Flush
  if flush?(player_2) == true
    if straight?(player_2) == true
      if royal?(player_2) == true
      end
    end
  end
# Once both hands are evaluated the top evaulations are compared
# consider assiging a number value to the winning hand
# then compare that for the winner

end

##### PAIR #####
def pair?(hand)
    hand.each { |k, v| 
    if v == 2
      return true
    end
  }
end

##### TWO PAIR #####
def two_pair?(hand) 
  if hand.has_value?(2) && hand.has_value?(2)
    return true
  end
end

##### 3 OF A KIND #####
def three_of_a_kind?(hand)
  hand.each { |k, v| 
    if v == 3
      return true
    end
  }
end

##### FOUR OF A KIND #####
def four_of_a_kind?(hand)
    hand.each { |k, v| 
    if v == 4
      return true
    end
  }

end

##### STRAIGHT #####
def straight?(hand)
  #straight = player2_rank.sort
  straight = hand.sort
  count = 0
  j = 1
  # then take the first element of the array 
  for i in (0...4) 
    if j < 5  
  # and compare it to the second element
      if straight[i] == (straight[j] - 1)
        count += 1
      end
    end
    j += 1
  end
  count == 4 ? true : false 
end

##### FLUSH #####
def flush?(hand)
  counts = Hash.new 0
  check_flush = hand.join(' ').split('').each { |suit|  counts[suit] += 1 }
  counts.each { |k, v| 
    if v == 5
      return true
    end }

end

def royal?(hand)
  # find if the first card is 10 and last card is A assuming it's sorted
  print hand

end




poker_hands("8C 7H 7S 7H TD", "TD JD QD KD AD")
