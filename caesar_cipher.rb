# frozen_string_literal: true

def caesar_cipher(plain_text, shift_factor)
  ciphered_ascii = []
  ciphered_text = ''
  plain_text.each_char do |letter|
    temp = letter.ord
    if letter.ord <= 122 && letter.ord >= 97
      temp + shift_factor > 122 ? ciphered_ascii.push((temp + shift_factor - 122) + 96) : ciphered_ascii.push(temp + shift_factor)
    elsif letter.ord <= 90 && letter.ord >= 65
      temp + shift_factor > 90 ? ciphered_ascii.push((temp + shift_factor - 90) + 64) : ciphered_ascii.push(temp + shift_factor)
    else
      ciphered_ascii.push(letter)
    end
  end
  ciphered_ascii.map do |ascii|
    ciphered_text += ascii.chr
  end
  ciphered_text
end

# Code ends here. The rest is "user-prompts".

def user_prompts
  puts 'Please enter a text to be ciphered.'
  text = gets.chomp
  puts 'Please enter a shift factor to encrypt your text.'
  shift = gets.chomp.to_i

  ciphered = caesar_cipher text, shift

  puts ciphered
end

user_prompts
