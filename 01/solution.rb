# if File.exist?('userinfo.txt')
#   name, age, username = File.readlines('userinfo.txt').map(&:chomp)
#   puts "#{name} is #{age} years old and his/her github username is #{username}"
# else
#   print 'Your name: '
#   name = gets
#   print 'Your age: '
#   age = gets
#   until age.to_i.is_a?(Integer) && age.to_i > 0
#     print "Please input a positive number\n"
#     print 'Your age: '
#     age = gets
#   end
#   print 'Your github username: '
#   username = gets
#   File.open('userinfo.txt', 'w') do |f|
#     puts "#{name} is #{age} years old and his/her github username is #{username}"
#     f.puts [name, age, username]
#   end
# end

puts 'Hello World!'
