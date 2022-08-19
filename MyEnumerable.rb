module MyEnumerable
  def any?
    each {|i| return true if yield i}
    false
  end
  
  def all?
    each {|i| return false unless yield i}
    true
  end
  
  def filter
    filter_array =[]
    each{|i| filter_array.push(i) if yield i}
    filter_array
  end
end 