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
