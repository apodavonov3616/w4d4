require "rspec"
require "deck"

describe Deck do 
    let(:deck) { Deck.new }
    let(:card_) { double("card_", :new(symbol, suit) => "hi" }

    describe "#initialize" do
        it "should create a deck of cards" do
            expect(deck.deck.is_a?(Array)).to eq(true)
            expect(deck.deck.all? { |card| card.is_a?(card_)})
        end

        it "should include 52 cards" do
            expect(deck.deck.length).to eq(52)
        end
    end 


end