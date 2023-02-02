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