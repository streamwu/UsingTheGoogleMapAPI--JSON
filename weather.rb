require 'open-uri'
require 'json'

puts "Please enter an address:"

address = gets.chomp
# address.tr(',', '%20')
address.gsub!(' ','')

json_data = open("http://api.openweathermap.org/data/2.5/weather?q=#{address}").read
data = JSON.parse(json_data)


puts data["main"]["temp"].to_s + "f"
