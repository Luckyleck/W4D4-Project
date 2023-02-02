def my_uniq(array)

    raise TypeError if !array.is_a?(Array)

    new_array = []

    array.each do |ele|
        if !new_array.include?(ele)
            new_array << ele
        end
    end

    return new_array

end

class Array

    def two_sum

        if !self.all? {|ele| ele.is_a?(Integer)}
            raise "It can only contain numbers"
        end
        
        new_array = []

        (self.length).times do |i|
            (i + 1...self.length).each do |j|
                if self[i] + self[j] == 0
                    new_array << [i,j]
                end
            end
        end

        return new_array

    end

end

def my_transpose(array)
    final = []

    
    array.each_with_index do |subary, i|
        transepose = []
        array.each do |sub|
            
            transepose << sub[i]
        end
        final << transepose
    end

    return final
end

def stock_picker(array)

    if !array.all? {|ele| ele.is_a?(Integer)}
        raise "It can only contain numbers"
    end

    minum = array.index(array.min) + 1
    max = array.index(array.max) + 1

    return "buy on day #{minum} and sell on day #{max}"


end