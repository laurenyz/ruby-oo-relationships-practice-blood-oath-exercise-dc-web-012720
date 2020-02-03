class Cult
    attr_reader :cult_name, :location, :founding_year, :slogan
    @@all = []

    def initialize (cult_name, location, founding_year, slogan)
        @cult_name = cult_name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end
    
    #`Cult#recruit_follower`takes in an argument of a `Follower` instance and adds them to this cult's list of followers
    def recruit_follower(follower_obj)
        BloodOath.new(self, follower_obj, Time.now.to_s)
    end

    def followers
        BloodOath.all.select do |bo_obj|
            bo_obj.cult == self
        end.map {|bo_obj| bo_obj.follower}
    end

    #`Cult#cult_population` returns an `Integer` that is the number of followers in this cult
    def cult_population
        self.followers.count 
    end

    #`Cult.find_by_name takes a `String` argument that is a name and returns a `Cult` instance whose name matches that argument
    def self.find_by_name(cult_str)
        self.all.detect do |cult_obj|
            cult_obj.cult_name == cult_str
        end
    end
    
    #`Cult.find_by_location`takes a `String` argument that is a location and returns an `Array` of cults that are in that location
    def self.find_by_location(location_str)
        self.all.select do |cult_obj|
            cult_obj.location == location_str
        end
    end

    #`Cult.find_by_founding_year` takes an `Integer` argument that is a year and returns all of the cults founded in that year
    def self.find_by_founding_year(year_int)
        self.all.select do |cult_obj|
            cult_obj.founding_year == year_int
        end
    end

end