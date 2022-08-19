require_relative 'MyEnumerable'

class MyList 
    include MyEnumerable
    def initialize(*list)
        @list = list
    end
    def each
        list_length = @list.length
        list_length.times { |i| yield @list[i]}
    end
end


list = MyList.new(1, 2, 3, 4)

# Test #all?
list.all? {|e| e < 5}
list.all? {|e| e > 5}

# Test #any?

list.any? {|e| e == 2}
list.any? {|e| e == 5}

# Test #filter

list.filter {|e| e.even?}