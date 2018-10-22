class Deck

    attr_accessor :cards

    def initialize
        rank_array = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suit_array = ["Hearts", "Clubs", "Diamonds", "Spades"]
        @cards = []
        suit_array.each do |suit|
            rank_array.each do |rank|
                @cards << Card.new(suit, rank)
            end
        end
        @cards
    end

    def choose_card
        random_index = rand(0..51)
        self.cards.delete_at(random_index)
    end


end

class Card

    attr_accessor :rank, :suit

    def initialize(suit, rank)
        self.rank = rank
        self.suit = suit
    end

end
