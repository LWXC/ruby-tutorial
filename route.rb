class Route
  attr_accessor :route

	def initialize(stations = [])
		if stations.size >= 2
      @stations = stations
		# @route = []
			puts "Route #{@stations.first} - #{@stations.last} created"
    else
      puts "There are few stations in the route"
    end
	end

	def start_route
		puts "The first station on this route #{@stations[0]}"
	end

	def end_route
		puts "The last station on this route  #{@stations[-1]}"
	end

	def middle_route
		puts "Intermediate stations on this route #{@stations[1..-2]}"
	end

	def add(station)
		@stations.insert(-2, station)
		puts "New station (#{station}) added to route"
	end

	def delete(station)
		if @stations.include?(station)
			@stations.delete(station)
			puts "Station #{station} removed from route"
		else
			puts "Station #{station} is not on the route"
		end
	end

	def list
	  puts "Direction from #{@stations.first} to #{@stations.last}"
    @stations.each_with_index{ |station, index| puts "#{index + 1}. #{station}"}
	end

	def stations
    @stations
  end

end
