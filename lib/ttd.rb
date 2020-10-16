require 'byebug'

class Array
    def my_uniq
        result = Array.new
        self.each do |ele|
            result << ele unless result.include?(ele)
        end
        result
    end

    def two_sum
        result = []
        self.each_with_index do |ele1, idx1|
            self.each_with_index do |ele2, idx2|
                if idx2 > idx1 && ele1 + ele2 == 0
                    result << [idx1, idx2]
                end
            end
        end
        result
    end

    # def [](index)
    #     x, y = index
    #     self[index]
    # end

    # def []=(index, val) # x, y = index
    #     # self[index] = val
    # end

    def my_transpose
        height = self.length 
        width = self[0].length
        result = Array.new(height) { Array.new(width) }
        
        (0...height).each do |row|
            (0...width).each do |col|
                # debugger
                result[col][row] = self[row][col]
            end
        end
        result
    end

end #!

    def stock_picker(array)
        max = array.max
        min = array.min
        ((array.length - 1).downto(0)).each do |idx1|
            ((array.length - 1).downto(0)).each do |idx2|
                if idx2 > idx1 
                    return [array.index(min), array.index(max)]
                end
            end
        end
    end

    def tower_of_hanoi

    end