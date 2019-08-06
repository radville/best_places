class BestPlaces::Place
    attr_accessor :name, :url, :rank, :score, :qual_life, :value, :high_low_temp, :rankings,
    :population, :salary, :rent, :commute

    @@all = []

    def initialize(place_hash)
        place_hash.each {|key, value| self.send(("#{key}="), value)}
        @@all << self
    end

    def self.create_from_collection(places_array)
        places_array.each do |place|
            place = self.new(place)
        end
    end

    def add_details(details_hash)
        details_hash.each {|key, value| self.send(("#{key}="), value)}
    end

    def self.all
        @@all
    end

end