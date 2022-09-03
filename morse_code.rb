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
}.freeze

def decode_char(code)
  MORSE_DICT.key(code).upcase()
end

def decode_word(string)
  word_array = []
  string.split.each do { |char| word_array << decode_char('.-') }
  word_array.join
end

def decode_string(string)
  translation = []
  string.split('   ').each do { |word| translation << decode_word('-- -.--') }
  translation.join(' ')
end

puts decode_char('.-')
puts decode_word('-- -.--')
puts decode_string('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
