def reverse(string)
  string_array = []
  string.split()
  string_array.push(string)
  string_array.sort! { |x,y| y <=> x}
end


def is_a_palindrome? str
  str = scrub_string(str)
  (str.length/2).times do |index_counter|
    if str[index_counter] !=str[-(index_counter + 1)]
      return false
    end
  end
  true
end

####### Actual Answer #######
require 'pry'
require 'colorize'

@reverse = []

def main
  print `clear`
  puts "----palindrome checker----".green
  @word = gets.strip.downcase.gsub(" ", "").split("")
  check
end

def check
  @word.each {|letter| @reverse.unshift(letter) }
  if @word == @reverse
    puts "it's a palindrome.".green
  else
    puts "nope.".red
  end
end
main
