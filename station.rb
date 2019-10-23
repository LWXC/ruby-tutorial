#IF you have trains and routes, then you also need stations
class RailwayStation
  def initialize(name)
		@name = name
		@trains = {}
		puts "Station #{@name} created"
	end

	def list
		puts "At the station now #{@trains.length} trains"
	end

	def list_type
    puts "At a Freight train station: #{count_hash_dublicate(@trains, "freight")}"
    puts "At a Passenger train station: #{count_hash_dublicate(@trains, "passenger")}"
	end

	def take_train(train = {})
    @number = train.keys.join
    @type   = train.values.join
		if @number.nil? || @type.nil?
			puts "Unable to take such a train"
		else
			# @trains << {@number => @type}
      @trains[@number] = @type
			puts "Train number #{@number} and type #{@type} received at the station"
		end
	end

	def send_train(train = {})
    @number = train.keys.join
    @type   = train.values.join
    if @trains.include?({@number => @type})
      @trains.delete({@number => @type})
      puts "Train with number: #{@number} left the station"
    else
      puts "There is no such train at the station"
    end
  end
end
