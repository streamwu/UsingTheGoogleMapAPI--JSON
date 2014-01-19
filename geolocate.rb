require 'open-uri'
require 'json'

puts "Enter an address, city or zipcode:"

address = gets.chomp
address.tr(',', '%20')
address.gsub!(' ','')

json_data = open("http://maps.googleapis.com/maps/api/geocode/json?address=#{address}&sensor=true").read
data = JSON.parse(json_data)


puts "Latitude: #{data["results"][0]["geometry"]["location"]["lat"]}"
puts "Latitude: #{data["results"][0]["geometry"]["location"]["lng"]}"