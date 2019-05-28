class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "The #{@rank} of #{@suit}"
  end
end

class Deck
  def initialize
    @ranks = [*(2..10), 'hearts', 'diamonds' 'clubs', 'spades'] #@ranks stores all the ranks in an array *(2..10) is a cool shortcut and came across so I dont have to list out all the ranks.
    @suits = ['hearts', 'diamonds', 'clubs', 'spades'] #stores all 4 suits in an array
    @cards []   #I used an empty array that will store the newly created DeckofCards
      
    @ranks.each do |rank|  #method of nested loops
      @suits.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
      

  @cards.shuffle!
  end
 
  def deal (number)
    number.times {@cards.shift.output_card} #I use the .shift  method which removes the first element from our shuffled @cards array (or many elements depending on the number dealt).
  end
end
 
deck = Deck.new
deck.deal(7)