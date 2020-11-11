def panagram?(string)
  [*"a".."z"] - string.downcase.chars == []
end

def trump_detector(trump_speech)
  not_vowel = trump_speech.chars.delete_if { |alphabet| alphabet.downcase.match /[^aeiou]/ }.length
  uniq_alphabet = trump_speech.chars.select.with_index { |ts, index| index == 0 || ts.downcase != trump_speech[index-1].downcase }
  vowel_count = uniq_alphabet.select { |ua| ua.downcase.match /[aeiou]/ }.length
  ((not_vowel - vowel_count).to_f / vowel_count).round(2)
end
