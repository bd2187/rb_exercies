def hipsterfy(str)
    reversedStr = str.reverse

    foundVowel = false
    vowels = "aeiou"

    removedVowel = ""
    i = 0
    while i < reversedStr.length
        if (vowels.include?(reversedStr[i])) && !foundVowel
            
            foundVowel = true

        else

            removedVowel += reversedStr[i].to_s

        end

        i += 1
    end

    removedVowel.reverse
end

# p hipsterfy("tonic")
# p hipsterfy("panther")
# p hipsterfy("swimming")
# p hipsterfy("rhythm")
# p hipsterfy("my")

def vowel_counts(str)
    vowels = "aeiou"
    str.split("").inject({}) do |hash, char|
        char = char.downcase

        if vowels.include?(char)

            if hash[char]
                hash[char] += 1
            else
                hash[char] = 1
            end
            
        end

        hash
    end
end

# p vowel_counts("code bootcamp")
# p vowel_counts("williamsburg bridge")
# p vowel_counts("WILLIAMSBURG bridge")

def caesar_cipher(message, num)

    alphabet = ("a".."z").to_a
    new_message = ""
  
    message.each_char do |char|
      old_idx = alphabet.index(char)
      if old_idx == nil
        new_message += char
      else
        new_idx = old_idx + n
        new_message += alphabet[new_idx % 26]
      end
    end
end