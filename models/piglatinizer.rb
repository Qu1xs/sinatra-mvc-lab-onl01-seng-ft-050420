class PigLatinizer

def piglatinize(input)
    words_arr = input.split(" ")

    latin_arr = words_arr.map do |word|
        #find first vowel
        vowel_index = word.index(/[aeiouAEIOU]/)
            if vowel_index == 0 #starts with vowel
                word + "way"
            else #starts with consonant
                word[vowel_index..-1] + word[0...vowel_index] + "ay"
            end 
        end
        latin_arr.join(' ')
    end 

end