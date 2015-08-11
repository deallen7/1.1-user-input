puts "What is your full name?"
name = gets.chomp.capitalize

puts "What is your ideal legal situation?"

Legal_Hash = {
	"A" => "I am law abiding!",
	"B" => "I make sure other obey the law.",
	"C" => "I live outside the law.",
	"D" => "Questionable.",
	"E" => "What is the law?",
}

Legal_Hash.each do |value, key|
	puts "#{value} - #{key}"
end

answer = gets.chomp.upcase

if answer == "A"
	puts "The Empire thanks you for your aquiescience, citizen #{name}."
elsif answer == "B"
	puts "#{name}, aren't you a little short for a Storm Trooper?"
elsif answer == "C"
	puts "Hey, #{name}! Who's scruffy-lookin'?"
elsif answer == "D"
	puts "#{name}, I loathe bounty hunters. We don't need their scum..."
elsif answer == "E"
	puts "#{name}, meesa Jar Jar Binks."

end