def my_map(arr, &prc)
    arr.map { |item| prc.call(item)}
end

# p my_map([1,2,3]) { |n| 2 * n }
# p my_map(["Hey", "Jude"]) { |word| word + "?" }

def my_select(arr, &prc)
    arr.select { |item| prc.call(item)}
end

# p my_select([1,2,3,8]) { |n| n.even? }
# p my_select([0, 2018, 1994, -7]) { |n| n > 0 }
# p my_select([6, 11, 13], &:odd?)

def my_count(arr, prc)
    arr.count {|num| prc.call(num)}
end

# is_even = Proc.new { |n| n.even? }
# p my_count([1,4,3,8], is_even) 

# to_upcase = Proc.new { |s| s == s.upcase }
# p(["DANIEL", "JIA", "KRITI", "dave"], to_upcase) 

# p my_count(["daniel", "jia", "kriti", "dave"], to_upcase)

def my_any?(arr, &prc)
    arr.any? {|item| prc.call(item)}
end

# p my_any?([7, 10, 3, 5]) { |n| n.even? }
# p my_any?([7, 10, 4, 5]) { |n| n.even? }
# p my_any?(["q", "r", "s", "i"]) { |char| "aeiou".include?(char) }