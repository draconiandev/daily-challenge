# This doesn't exclude the Project Gutenberg header and footer, book title, story titles, and chapters

require 'open-uri'
book_url = 'http://www.gutenberg.org/cache/epub/1661/pg1661.txt'

book = open(book_url) { |f| f.read }
p book.gsub(/[[:upper:]][^0-9a-z ]/i, '').length