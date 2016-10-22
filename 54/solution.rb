def encrypt(message, key)
  if message.length % key != 0
    padding_length = key - (message.length % key)
  else
    padding_length = 0
  end
  message = message + (1..padding_length).map{"qwertzuiopasdfghjklyxcvbnm"[(rand*26).to_i]}.join
  
  matrix = message.split("").each_slice(key).to_a.transpose.flatten.join
end

def decrypt(message, hint)
  (1..message.length).each do|test_key|
    suggestion = encrypt(message, test_key)
    if suggestion[0..hint.length-1]==hint
      puts suggestion
      puts test_key
    end
  end
end

puts "Do you want to [d]ecrypt or [e]ncrypt?"

if gets.strip=="e"
  puts "Please enter the message you want encrypted"
  message = gets.strip
  puts message
  puts
  puts "\nPlease enter key-length"
  key = gets.to_i
  cipher = encrypt(message, key)
  puts cipher
else
  puts "Please enter the message you want decrypted"
  message = gets.strip.gsub("_"," ")
  puts
  puts message
  puts
  puts "Please enter a phrase the original message could start with"
  hint = gets.strip
  decrypt(message, hint)
end