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
