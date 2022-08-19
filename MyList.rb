require_relative 'MyEnumerable'

class MyList 
    def initialize(list)
        @list = list
    end
    def each
        list_length = @list.length
        list_length.times { |i| yield @list[i]}
    end
end


list = MyList.new(1, 2, 3, 4)