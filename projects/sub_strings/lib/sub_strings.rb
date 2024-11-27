# lib/sub_strings.rb

def substrings(string, dictionary)
  substrings = Hash.new(0)
  string.downcase.split(/\W+/).each do |word|
    dictionary.each do |dict_word|
      substrings[dict_word] += 1 if word.include?(dict_word)
    end
  end
  substrings
end