def select_even_nums(arr)
    arr.select(&:even?)
end

# p select_even_nums([7, 3, 2, 5, 12])
# p select_even_nums([20, 40, 31])
# p select_even_nums([1, 2017])

def reject_puppies(arr)
    arr.reject { |dog| dog["age"] <= 2}
end

# p reject_puppies([
#     {"name"=>"Fido", "age"=>3},
#     {"name"=>"Spot", "age"=>2},
#     {"name"=>"Rex", "age"=>5},
#     {"name"=>"Gizmo", "age"=>1}
# ])

def count_positive_subarrays(arr)
    arr.inject(0) do |sum, sub_arr|

        sub_sum = sub_arr.inject(0) do |sub_sum, num|
            sub_sum += num
        end

        sum += 1 if sub_sum > 0            

        sum
    end
end

# p count_positive_subarrays([
#     [-2, 5],
#     [1, -9, 1],
#     [4, 7]
# ])

# p count_positive_subarrays([
#     [4],
#     [-20, 1, 3],
#     [4, -5],
#     [-1000, 1000, -1, 1]
# ])

def aba_translate(word)
    translated_word = ""

    vowels = "aeiou"

    word.split("").each_with_index do |char, idx|
        if vowels.include? char

            translated_word += char.to_s + "b".to_s + char.to_s + char[idx + 1 .. -1].to_s

        else

            translated_word += char.to_s

        end
    end

    translated_word
end

# p aba_translate("cats")
# p aba_translate("dog")
# p aba_translate("afrika")
# p aba_translate("fly")

def aba_array(arr)
    arr.map { |word| aba_translate(word)}
end

# p aba_array(["cat", "dog", "butterfly"])
# p aba_array(["fly", "kite"])