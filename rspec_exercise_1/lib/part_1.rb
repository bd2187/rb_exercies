def average(num1, num2)
    sum = num1 + num2
    avg = sum / 2.0
    avg
    
end

# p average(4, 8)
# p average(5, 10)

def average_array(arr)
    sum = arr.reduce {|sum, num| sum + num}
    avg = sum / Float(arr.length)
    avg

end

# p average_array([2, 4, 6])
# p average_array([3, -4, 21, 8])
# p average_array([5, 10])

def repeat(str, repeatTimes)
    repeatStr = ""
    repeatTimes.times {|| repeatStr += str.to_s}
    repeatStr
end

# p repeat("happy", 2)
# p repeat("Work", 5)
# p repeat("whoa", 0)

def yell(str)
    str.upcase.to_s + "!"
end

# p yell("hello")
# p yell("goodBYE")

def alternating_case(sentence)
   arr = sentence.split(" ").each_with_index.map do |word, i|    
        if (i % 2 == 0)
            word.upcase
        else
            word.downcase
        end
   end

   arr.join(" ")

   
end

# p alternating_case("code never lies, comments sometimes do.")
# p alternating_case("HEY PROGRAMMERS")