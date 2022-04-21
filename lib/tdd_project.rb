def remove_dups(array)
    raise ArgumentError if !array.is_a?(Array)
    array.uniq
end


class Array
    def two_sum
        # raise ArgumentError if !self.is_a?(Array)
        new_arr = []
        (0...self.length - 1).each do |i|
            ((i + 1)...self.length).each do |j|
                if self[i] + self[j] == 0
                    new_arr << [i, j]
                end
            end
        end
        new_arr
    end
end

def my_transpose(array)
    raise ArgumentError unless array.is_a?(Array)
    raise ArgumentError unless array.all? { |sub_arr| sub_arr.length == array.length }

    array.transpose
end 

def stock_picker(array)
    raise ArgumentError unless array.is_a?(Array)
    raise ArgumentError unless array.all? { |ele| ele.is_a?(Integer) || ele.is_a?(Float) }
    largest_dif = 0
    output = []
    (0...array.length-1).each do |i|
        (i+1...array.length).each do |j|
            if (array[j] - array[i]) > largest_dif
                output = [i,j]
                largest_dif = array[j] - array[i]
            end
        end
    end
    output
end

class TowersOfHanoi
    def initialize
        @grid = 
    end

    
end
