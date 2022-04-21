require_relative "card"

class Deck
    attr_reader :deck

    def initialize
        @deck = create_deck
    end

    def create_deck
        symbols = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
        suits = ["diamond", "spades", "heart", "clubs"]
        array = []

        symbols.each do |symbol|
            suits.each do |suit|
                array << Card.new(symbol, suit)
            end
        end 
        array
    end
end 