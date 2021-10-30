# Card Game: each player draws a card from the deck and the player with the highest card wins.
# The first class in our card game with Python is a Card class, which has two class variables, suits and values. 
# Suits is a tuple of strings representing all the suits a card can be: spades, hearts, diamonds, clubs. value is a tuple of strings representing 
# the different numeric values a card can be: 2–10, Jack, Queen, King, and Ace.
# The elements of the first two indexes of the value tuple are None, so the strings in the tuple match the index they represent.
# So the string “2” in the tuple of values is at index 2.
# Card objects have two instance variables: suit and value, each represented by an integer.
# Together, the instance variables represent the card type of the Card object. 
# For example, you create a 2 of hearts by creating a Card object and passing it the parameters 2 (for color) and 1.
# The code for these magic methods can also handle whether the cards have the same value, for example, 
# if both cards have a value of 10. If this happens, the methods use the value of the combinations to break the tie.
# The combinations are ranked in order of strength in the combination tuple – with the strongest combination 
# last, and thus assigned to the highest index, and the less powerful combination to the lowest index.

class Card:
    suits = ["spades",
             "hearts",
             "diamonds",
             "clubs"]
    
    values = [None, None,"2", "3",
              "4", "5", "6", "7",
              "8", "9", "10",
              "Jack", "Queen",
              "King", "Ace"]

    def __init__(self, v, s):
        """suit + value are ints"""
        self.value = v
        self.suit = s

    def __lt__(self, c2):
        if self.value < c2.value:
            return True
        if self.value == c2.value:
            if self.suit < c2.suit:
                return True
            else:
                return False
        return False

    def __gt__(self, c2):
        if self.value > c2.value:
            return True
        if self.value == c2.value:
            if self.suit > c2.suit:
                return True
            else:
                return False
        return False

    def __repr__(self):
        v = self.values[self.value] +\
            " of " + \
            self.suits[self.suit]
        return v
