require "rspec"
require "problems.rb"

describe "my_uniq" do
    # let (:array) { [1,2,1,3,3] }

    it 'Should return unique elements of the array' do

        expect(my_uniq([1,2,1,3,3])).to eq([1,2,3])

    end

    it 'Should return an empty array if arrya is empty' do

        expect(my_uniq([])).to eq([])

    end

    it 'Should not modify or mutate original Array' do

        array1 = ["a","b","c","c","b"]
        
        my_uniq(array1)

        expect(array1).to eq(["a","b","c","c","b"])

    end

    it 'Should accept only an Array' do

        expect{ my_uniq("I'm not array") }.to raise_error(TypeError)

    end

end

describe "Array#two_sum" do

    it 'Should return array containing indices of elements which sum to 0' do

        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0,4],[2,3]])

    end

    it 'Should contain only numbers' do

        expect{ ['a', 5, 'hello', 3, -5, 2].two_sum }.to raise_error("It can only contain numbers")

    end

end

describe "my_transpose" do

    it "should return transposed array" do

        rows = [
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8]
        ] 

        expect(my_transpose(rows)).to eq(
            [
                [0, 3, 6],
                [1, 4, 7],
                [2, 5, 8]
            ]
        )

    end

    it "should not modify original array" do

        rows = [
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8]
        ] 

        my_transpose(rows)

        expect(rows).to be(rows)

    end

end


describe "stock_picker" do 

    it "should return the best days to buy and sell stock" do

        expect(stock_picker([5, 10, 2, 4, 15, 7])).to eq("buy on day 3 and sell on day 5")
        expect(stock_picker([1, -100, 23, 50])).to eq("buy on day 3 and sell on day 5")

    end
    


    it 'input should only contain numbers' do

        expect{ stock_picker(['a', 5, 'hello', 3, -5, 2]) }.to raise_error("It can only contain numbers")

    end




end
