print 'Enter the offset value: '
@offset_value = gets

def encrypt_caesar_cipher(string, shift = @offset_value.to_i)
  alphabet   = Array('a'..'z')
  encrypter  = Hash[alphabet.zip(alphabet.rotate(shift))]
  string.chars.map { |c| encrypter.fetch(c, " ") }
end

print 'Enter a string to caeser cipher it: '
string = gets
puts encrypt_caesar_cipher(string).join

def decrypt_caesar_cipher(string, shift = -@offset_value.to_i)
  alphabet   = Array('a'..'z')
  encrypter  = Hash[alphabet.zip(alphabet.rotate(shift))]
  string.chars.map { |c| encrypter.fetch(c, " ") }
end

print 'Enter a string to caeser decipher it: '
string = gets
puts decrypt_caesar_cipher(string).join
