# ceaser_cipher.rb
def ceaser_cipher(string, shift_factor)
  shifted_string = string.chars.map do |char|
    if char.match(/[a-z]/)
      (((char.ord - 'a'.ord + shift_factor) % 26) + 'a'.ord).chr
    elsif char.match(/[A-Z]/)
      (((char.ord - 'A'.ord + shift_factor) % 26) + 'A'.ord).chr
    else
      char
    end
  end
  shifted_string.join
end