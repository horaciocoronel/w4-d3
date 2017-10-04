class Location

  def initialize(name)
    @name = name
  end

  def city_name
    @name
  end
end


class Trip < Location
  @@destinations = []

  def initialize(city)
    city = Location.new(city)
    @@destinations << city
  end

  def self.destination_reader
    @@destinations
  end

  def self.iterate
    puts "Began trip"
    @@destinations.each_cons(2) do |location|
      puts "Travelled from #{location[0].city_name} to #{location[1].city_name}"
    end
  end
end

# puts "Began trip."
trip1 = Trip.new("Toronto")
trip2 = Trip.new("Ottawa")
trip3 = Trip.new("Montreal")
trip4 = Trip.new("Vancouver")
trip5 = Trip.new("Halifax")
trip6 = Trip.new("Quebec City")
trip7 = Trip.new("Edmonton")

trip1 = Trip.iterate

trip1
