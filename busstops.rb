require 'csv'

def findstops
    filepath = 'stops.csv'
    stops_array = []

    CSV.foreach(filepath) do |row|
    stops_array << row[2].downcase
    end

    puts "Stop in which city? Starting letter will suffice"
    query = gets.chomp.downcase
    output = stops_array.select { |stop| stop.start_with? "#{query}" }
    output = output.map(&:capitalize)
    puts "These stops match your search: #{output}"

end

findstops







