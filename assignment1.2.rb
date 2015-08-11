# # Example 1 - Read File and close
# counter = 1
# file = File.new("countries.txt")
# while (line = file.gets)
# 	puts "#{counter}: #{line}"
# 	counter = counter + 1
# end
# file.close

# # Example 2 - Pass file to block
# counter = 1

# File.open("countries.txt") do |infile|
#     while (line = infile.gets)
#         puts "#{counter}: #{line}"
#         counter = counter + 1
#     end


# a = IO.readlines("countries.txt")
# a{}   #=> "This is line one\n"

# puts a

hash = {}
File.open("countries.txt") do |fp|
  fp.each do |line|
    key, value = line.chomp.split("|")
    hash[key] = value
  end
end

count = hash.length

puts "There are #{count} countries accounted for here. They are as follows:"

hash.each do |value, key|
	puts "#{value} - #{key.capitalize}"
end

Formatted_Countries = File.new("Formatted_Countries.txt", "w+")

hash.each do |value, key|
	File.open(Formatted_Countries, "a"){|f| f.puts "#{value} - #{key.capitalize}"} 
end