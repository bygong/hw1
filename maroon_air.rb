# Usage:
#    ruby maroon_air.rb /flights
#    ruby maroon_air.rb /flights/{date}/{flight_number}
#
#    For example:
#    ruby maroon_air.rb /flights/2017-06-02/777
$LOAD_PATH << '.'
require 'flight'
def display_all
  # 1. TO DO: use the Flight class instead, e.g.:
  #    Flight.all
  #
  #    and then use the returned data to generate the template below.

  puts "Date       Flt# Dest Leaves At Arrives At Miles Earned"
  puts "---------- ---- ---- --------- ---------- ------------"
  data = Flight.all()
  data.each do |f|
    puts "#{f[0]} #{f[1]}  #{f[2]}   #{f[3]}       #{f[5]}        #{f[6]}"
  end
end

def show_flight_details(the_date, the_flight_number)
  # 2. TO DO: use the following instead:
  #    Flight.find_by(date: the_date, flight_number: the_flight_number)
  #
  #    and then display flight information just like the template below.

  data =  Flight.find_by(date: the_date, flight_number: the_flight_number)
  puts "Date: #{data[0]['date']}"
  puts "Flight ##{data[0]['fltnum']}"
  puts "From: ORD"
  puts "To  : #{data[0]['destination']}"
  puts
  puts "Departs At: #{(data[0]['departure_time'][0..1])}:#{(data[0]['departure_time'][2..3])}"
  puts "Arrives At: #{(data[0]['arrival_time'][0..1])}:#{(data[0]['arrival_time'][2..3])}"
  puts
  puts "Frequent Flyer Miles:  #{data[0]['earned_miles']}"
  puts
  puts "All times shown are local."
  
end

#################################################
# Main Program - Do Not Touch
#################################################

path = ARGV.first

if path == '/flights'
  display_all
else
  date, flight_number = path.split('/')[2..3]
  show_flight_details(date, flight_number)
end
