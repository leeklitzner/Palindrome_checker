def scrub_string str
  str = str.to_s if !str.is_a?string
  str = str.gsub(/\W|\_/,"").downcase
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

def is_palindrome? str
  str = scrub_string(str)
  str == str.reverse ? true : false
end

def reverse(string)
  string_array = []
  string.split()
  string_array.push(string)
  string_array.sort! { |x,y| y <=> x}
end
