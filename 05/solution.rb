preset_username, preset_password = File.readlines('access.txt').map(&:chomp)

print 'Username: '
username = gets.chomp

print 'Password: '
password = gets.chomp

if username == preset_username && password == preset_password
  puts 'Welcome! Now that you have entered, you can user caeser cipher'
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
else
  print 'Access denied'
end