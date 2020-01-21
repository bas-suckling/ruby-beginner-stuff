dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
  somehash.keys
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash.each do |cityname| 
    if cityname.first == key
      return cityname.last
    end
  end
  puts "unknown error"
end

 
# Execution flow
loop do
    puts "Do you want to look up an area code by city name? (Y/N)"
    answer = gets.chomp.downcase
    puts
    break if answer != 'y'
    puts "Which city do you want the area code for?"
    puts
    puts get_city_names(dial_book)
    puts
    puts "Enter your selection"
    city = gets.chomp.downcase
    if dial_book.include?(city)
      puts get_area_code(dial_book, city)
    else
      puts "Invalid input"
    end
end