require 'securerandom'

print 'Enter the number of passwords required: '
@num = gets
print 'Enter the required password length in terms of bytes (The length of the result string is about 4/3 of n): '
@length = gets.to_i

(1..@num.to_i).each do
  random_password = SecureRandom.urlsafe_base64(@length)
  puts random_password
end