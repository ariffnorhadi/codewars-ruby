def title_case(title, minor_words = '')
  minor_words_as_array = minor_words.downcase.split(' ')
  title_as_array = title.capitalize.split(' ')

  title_as_array.map { |word| capitalize_no_minor_words(word, minor_words_as_array) }.join(' ')
end

def capitalize_no_minor_words(word, minor_words_as_array)
  minor_words_as_array.include?(word) ? word : word.capitalize
end

# https://gist.github.com/stacietaylorcima/0f1ded32e00d100b331c2c7b0b846fc6