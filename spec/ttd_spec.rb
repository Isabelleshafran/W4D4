require 'ttd'

describe Array do
    describe "my_uniq" do 
        it "removes duplicates" do 
        expect([1, 2, 1, 3, 3].my_uniq).to eq([1,2,3])
        end
    end

    describe "two_sum" do
        it  "Should return nested array of indicies whos elements sum to 0" do
            expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
        end
    end
    

    describe "my_transpose" do 
        it "transposes a matrix" do 
            expect([[0, 1, 2],[3, 4, 5],[6, 7, 8]].my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
        end
    end

    

end#!

describe "stock_picker" do
    it "returns an array where first ele is best day to buy and second ele is best day to sell" do
            expect(stock_picker([2,5,10,4,1,100,7]) ).to eq([4,5])
    end
end
 


describe Towers_Of_Hanoi do
subject(:game) (Towers_Of_Hanoi.new(array))
    let(:board) {double, ("board", valid_move? : true)}

    describe "initialize" do
        describe "rings" do
            arr = [[1,2,3] [] []]
            it "Should have a 2D array with 3 inner arrays" do 
                expect(game.arr[0].length).to eq(3) 
                expect(game.arr[1]).to eq([])
                expect(game.arr[2]).to eq([])
            end
            it "instantiates a position correctly" do
                expect(game.position).to eq([0,0])
            end
        end
    end
    
    describe "valid_move?" do
        it "Should return true if move is valid. False otherwise" do
            allow(board).to receive(:valid_move?).and_return(false)
            expect(game.new(array, [0,0])).to raise_error(InvalidMove)

        end
         
    end

end#!



# [red, blue, yellow]
# red = [1, 2]
# blue = [1, 2, 3, 4]
# yellow = [1, 2, 3, 4, 5]
# [1,2,3] [] [] ==> [1] [2] [3] #[] [] [123]

arr = [[1,2,3] [] []]