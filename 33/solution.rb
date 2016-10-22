# class Hash
#   @keys_used = []
#   def random_key
#     @keys_used = [] if @keys_used.size == self.size
#     key = self.keys[rand(self.size)]
#     while @keys_used.include?(key)
#       key = self.keys[rand(self.size)]
#     end
#     @keys_used << key
#     return key
#   end
# end

# @qa_pair = {
#   "12*12" => "144",
#   "What is reddit?" => "website with cats",
#   "Translate: Hola" => "hello"
# }

require 'yaml'

@qa_pair = YAML.load_file('questions.yml')

def quiz
  i = Random.rand(@qa_pair.length)
  questions = @qa_pair.keys
  answers   = @qa_pair.values
  puts questions[i]
  answer = gets.chomp
  return if answer == 'exit'
  if answer.downcase == answers[i].downcase 
    puts 'You are right. You can break by typing "exit"'
    quiz
  else
    puts "Sorry. You are wrong. Here's next question"
    quiz
  end
end

quiz