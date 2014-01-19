require 'open-uri'
require 'json'

puts "Enter an origin address:"

addr_origin = gets.chomp
addr_origin.tr(',', '%20')
addr_origin.gsub!(' ','')

puts "Enter a destination address:"

addr_dest = gets.chomp
addr_dest.tr(',', '%20')
addr_dest.gsub!(' ','')

json_data = open("http://maps.googleapis.com/maps/api/directions/json?origin=#{addr_origin}&destination=#{addr_dest}&sensor=true").read
data = JSON.parse(json_data)


puts "Total travel time driving: #{data["routes"][0]["legs"][0]["duration"]["text"]}"
puts "Total distance traveled: #{data["routes"][0]["legs"][0]["distance"]["text"]}"