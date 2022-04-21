require "tdd_project"
require "rspec"

describe "#remove_dups" do 
    context "when valid array is given" do 

        it "removes duplicates from an array" do
            expect(remove_dups([1,2,1,2])).to eq([1,2])
        end
    end

    context "when invalid input is given" do
        it "gives error if input is not an array" do 
            expect{ remove_dups("hello world") }.to raise_error(ArgumentError)
        end 
    end

end

describe Array do
    describe "#two_sum" do
        # context "when invalid input is given" do
        #     it "gives error if input is not an array" do 
        #         expect{ 3.two_sum }.to raise_error(ArgumentError)
        #     end 
        # end

        context "when given a valid array" do 
            it "finds all pairs of positions where the elements at those positions sum to zero" do 
                expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
            end
        end
    end
end

describe "#my_transpose" do 

    context "when invalid input is given" do
        it "gives error if input is not an array" do 
            expect{ my_transpose("hello world") }.to raise_error(ArgumentError)
        end 
    end

    context "if a square 2D array is not given" do 
        it "does not have the same number of rows as columns" do
            expect { my_transpose([[1,1],[1]]) }.to raise_error(ArgumentError)
        end
    end

    context "if a square 2D array is given" do 
        it "transposes the 2D array" do
            expect(my_transpose([[1,2],[3,4]]) ).to eq([[1,3],[2,4]])
        end
    end
end

describe "#stock_picker" do

    context "if an array is not given" do
        it "gives error if input is not an array" do 
            expect{ stock_picker("hello world") }.to raise_error(ArgumentError)
        end 
    end

    context "if not all elements in the array is a number" do
        it "gives an error" do
            expect { stock_picker([1, 3, "pickles"]) }.to raise_error(ArgumentError)
        end
    end

    context "if an array of stock prices are given" do 
        it "outputs the most profitable pair of days" do 
            expect(stock_picker([1, 10, 5, 100])).to eq([0, 3])
        end
    end
end

describe TowersOfHanoi do
    let(:player1) { double("player1", :gets => "0 1\n") }
    # allow(player1).to receive(:gets).and_return("0 1\n")

    describe "#initialize" do 
        it "creates a new instance of game"
        it "creates an instance of a player"
    end

    describe "#play" do 
        it "calls '#get_move' while player has not won"
        it "calls '#move'"
        it "calls '#won?'"
    end 

    describe "#move" do 
        it "checks if the next position is a valid move"
        it "moves the top piece to the next position"
    end

    describe "#get_move" do
        it "prompts the user to input move" do 

        end
        
        it "should return an array of 2 numbers"
    end 

    describe "#won?" do 
        it "returns true if player has won"
        it "returns false if player has lost"
    end

    describe "#valid_move?" do 
        it "checks if the end position is a valid move"
    end 
end

describe Player do 

    subject(:player) { Player.new }
    
    describe "#get_move" do
        it "prompts the user to input move" do
            usr_input = double("0 1\n", :chomp=>"")
        end

        it "should return an array of 2 numbers"
    end 
end







