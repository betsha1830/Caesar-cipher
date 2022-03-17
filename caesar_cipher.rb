def caesar_cipher (plain_text, shift_factor)

    # PROBLEM
    # 
    # Encrypt a text by shifting the position of a letter with a given shift factor(position attribute)

    # SOLUTION
    #
    # 1- Store the ascii code of all the letters (Capital and small)
    # 2- Iterate through each letter and check if the addition of shift factor will push the letter out of bounds
    #   2.1- If out of bounds continue shifting from the first letter
    #

    # CASES
    # 1- Add the shift factor to ascii code and check 
    #   1.1- If code is out of bounds substract the ascii code (which is out of bounds) from z's ascii code and add the result to a's acii code.

    # A-Z 65-90
    # a-z 97-122

    temp = 0
    ciphered_ascii = []
    ciphered_text = ""

    plain_text.each_char do |letter|
        temp = letter.ord

        if (letter == " ") 
            ciphered_ascii.push(" ")

        elsif (letter.ord <= 122 && letter.ord >= 97)
            
            if (temp + shift_factor > 122)
                ciphered_ascii.push((temp + shift_factor - 122) + 97)
            else ciphered_ascii.push(temp + shift_factor)
            end

        elsif (letter.ord <= 90 && letter.ord >= 65)
            if (letter == " ") 
                ciphered_ascii.push(" ")
            elsif (temp + shift_factor > 90)
                ciphered_ascii.push((temp + shift_factor - 90) + 65)
            else ciphered_ascii.push(temp + shift_factor)
            end
        else ciphered_ascii.push(letter)
        end

    end
    
    ciphered_ascii.map do |ascii|
        ciphered_text += ascii.chr
    end
    
    puts "#{ciphered_ascii} #{ciphered_text}"

end

caesar_cipher "Why so serious?", 1