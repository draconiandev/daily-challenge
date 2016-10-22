print "Lines Count: ", File.foreach('file.txt').count, "\n"
print "Words Count: ", File.read('file.txt').split.size, "\n"
print "Chars Count: ", File.read('file.txt').split('').size, "\n"