class Train

	attr_accessor :speed, :wagon, :type, :route, :station

	def initialize(number, type)
    @type = type
		@number = number
    @train = {number => @type}
		@speed = 0
		@wagon = 0
		puts "New train №#{@number} assembled, type #{@type}"
	end

	def type
		puts "Train №#{@number} have type #{@type}"
	end

	def speed
		puts puts "Train №#{@number} have speed #{@speed}"
	end

	def speed_up
		@speed += 20
		if speed_zero?
			puts "Train №#{@number} budged and traveled at 20 km/h"
		else
			puts "Train №#{@number} accelerated by 20 km/h, now its speed is #{@speed}"
		end
	end

	def stop
		if speed_zero?
			puts "Train №#{@number} already standing"
		else
      @speed = 0
      puts "Train №#{@number} is stopped"
		end
	end

	def add_wagon
		if speed_zero?
			@wagon += 1
			puts "Train №#{@number}  has a new wagon added, now it has  #{@wagon}pcs."
		else
			puts "First stop the train in order to add a wagon to it"
		end
	end

	def delete_wagon
		if speed_zero?
			@wagon -= 1
			puts "Wagon unhooked from train №#{@number}"
		else
			puts "First stop the train in order to add a wagon to it"
		end
	end

	def take_route(station)
		@station = station
    puts "Train №#{@number} is ready to go from station #{@station.first} to station #{@station.last}"
	end

  def move(station)
    if @route.include?(station)
      @station = station
      puts "Train №#{@number} arrived at the station #{@station}"
    else
      puts "There is no such station in the route"
    end
  end

  def list
    return {@number => @type}
  end

private

  def speed_zero?
    @speed.zero?
  end

  def count_hash_dublicate(hash, value)
    count = 0
    hash.values.each do |t|
      if t == value
        count += 1
      end
    end
    return count
  end
end
