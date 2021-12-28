
def check_letters_to_shift(letter, shift)
    if shift > 0
        if letter.between?("a", "z") || letter.between?("A", "Z")
            substitute = letter.ord + shift
            if letter.between?("a", "z") && substitute > 122
                rsubstitute = 96 + (substitute-122)
                rsubstitute.chr
            elsif letter.between?("A", "Z") && substitute > 90
                rsubstitute = 64 + (substitute-90)
                rsubstitute.chr
            else
                substitute.chr
            end
        else
            letter
        end
    else
        if letter.between?("a", "z") || letter.between?("A", "Z")
            substitute = letter.ord + shift
            if letter.between?("a", "z") && substitute < 97
                rsubstitute = 123 - (97 -substitute)
                rsubstitute.chr
            elsif letter.between?("A", "Z") && substitute < 65
                rsubstitute = 91 - (65-substitute)
                rsubstitute.chr
            else
                substitute.chr
            end
        else
            letter
        end
    end

end

def caesar_cipher(message, shift)
    result_array = []
    letters = []
    message.split.map do |word|
        word.each_char do |letter|
            letter = check_letters_to_shift(letter, shift)
            letters.push(letter)
        end
        result_array.push(letters.join)
        letters = []
    end
    result_array.join(" ")

end

puts caesar_cipher("Swzvowoxd k mkockb mszrob drkd dkuoc sx k cdbsxq kxn dro crspd pkmdyb kxn drox yedzedc dro wynspson cdbsxq:", -10)
puts check_letters_to_shift("A", 5)




