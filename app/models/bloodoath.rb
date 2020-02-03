class BloodOath
    attr_reader :cult, :follower, :initiation_date
    @@all = []

    def initialize(cult_obj, follower_obj, initiation_date)
        @cult = cult_obj
        @follower = follower_obj
        @initiation_date = initiation_date
        @@all << self
    end

    def self.all
        @@all
    end

end