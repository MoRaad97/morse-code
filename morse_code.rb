MORSE_DICT = {
  'a' => '.-',
  'b' => '-...',
  'c' => '-.-.',
  'd' => '-..',
  'e' => '.',
  'f' => '..-.',
  'g' => '--.',
  'h' => '....',
  'i' => '..',
  'j' => '.---',
  'k' => '-.-',
  'l' => '.-..',
  'm' => '--',
  'n' => '-.',
  'o' => '---',
  'p' => '.--.',
  'q' => '--.-',
  'r' => '.-.',
  's' => '...',
  't' => '-',
  'u' => '..-',
  'v' => '...-',
  'w' => '.--',
  'x' => '-..-',
  'y' => '-.--',
  'z' => '--..'
}.freeza

def decode_char(code)
  MORSE_DICT.key(code).upcase
end

puts decode_char(".-")

def decode_word(string)
  word_array = []
code = string.split(" ")
code.each do |char|
  word_array << decode_char(char)
end
word_array.join
end

puts decode_word("-- -.--")

def decode_string(string)
  translation = []
  string_a = string.split("   ")
  string_a.each do |word|
    translation << decode_word(word)
  end
   puts translation.join(" ")
end

 decode_string(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
